# -*- coding: utf-8 -*-
# author: furiston

import os, csv, datetime, glob, requests, logging as l

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "getDemocracy.settings")
l.basicConfig(filename='gd.log', level=l.DEBUG)
from gd.models import MV, Mv_records, Works
import gdsettings as gds
from bs4 import BeautifulSoup


def main():
    """
    the function retrieves whole data from the source and record it to a csv file
    after recording to a csv file call mvCsvToDb() with parameter 2 to write it to db.

    :return: success
    """
    page = requests.get(str(gds.MV_LIST_LINK))
    page.close()
    html = BeautifulSoup(page.text, from_encoding="iso-8859-9")
    parseData = html.table.find_all('td')

    temporaryList = []

    for info in parseData:
        if not info.string.isspace():
            temporaryList.append(info)

    dataToArray = []

    for x in temporaryList:
        dataToArray.append(str(x))

    mvCsvFile = open(str(datetime.date.today()) + '.csv', 'w')

    listOfMv = csv.DictWriter(mvCsvFile, delimiter=',',
                              fieldnames=['MVNO', 'MVNAME', 'MVPARTY', 'MVCITY', 'MV_ILK_KANUN', 'MV_KANUN',
                                          'MV_ILK_MAO', 'MV_MAO', 'MV_ILK_GGO', 'MV_GGO', 'MV_ILK_GO', 'MV_GO',
                                          'MV_SSO', 'MV_YSO'])
    listOfMv.writeheader()
    l.info('data retrieved')
    counter = 0

    city = ""
    mvno = ""
    mvname = ""
    mvparty = ""

    for data in dataToArray:
        if '<b>' in data:
            city = data[36:-16]

        if 'href' in data:
            mvno = data[112:116]
            mvname = data[118:-9]
            print mvname

        if not '<b>' in data and not 'href' in data:
            mvparty = data[17:-5]
            resultsetDict = mv_workcount(mvno)
            mvBasic = {'MVNO': mvno, 'MVNAME': mvname, 'MVPARTY': mvparty, 'MVCITY': city}
            mvWhole = dict(resultsetDict.items() + mvBasic.items())
            listOfMv.writerow(mvWhole)
            counter += 1
            print counter

        l.info('data parsed for %s' %mvname)

    mvCsvFile.close()

    # below save the data to db with option 1 to save changes of mv datas alsotable.find_al
    mvCsvToDb(1)
    l.info('all data succesfully recorded')


def mvinfo(filename):
    listOfMv = csv.DictReader(open(filename))
    return listOfMv


def mv_workcount(idmv):
    all_links1 = [gds.MV_ILK_KANUN, gds.MV_KANUN, gds.MV_ILK_MAO, gds.MV_MAO, gds.MV_ILK_GGO, gds.MV_GGO, gds.MV_ILK_GO,
                  gds.MV_GO]
    all_links2 = [gds.MV_SSO, gds.MV_YSO]

    resultset = []

    for link in all_links1:
        page = requests.get(link + str(idmv))

        html = BeautifulSoup(page.text, "lxml")
        for table in html('table'):
            if '2' in table.get('border'):
                resultset.append(len(table.find_all('tr')) - 1)
                print(len(table.find_all('tr'))-1)
                for tr in table.find_all('tr')[1:]:
                    base_td = tr.find_all('td')
                    Works.objects.get_or_create(
                        esas=base_td[-3].getText(),
                        link=base_td[-3].find('a').get('href'),
                        ozet=base_td[-1].getText())
                    MV.objects.get(mv_id=6476).mv_works.add(Works.objects.filter(link=base_td[-3].find('a').get('href'))[0])


    for link in all_links2:
        page = requests.get(link + str(idmv))
        page.close()
        html = BeautifulSoup(page.text, "lxml")
        resultset.append(len(html.find_all('tr', valign="TOP")) / 2)

    resultsetDict = {'MV_ILK_KANUN': resultset[0], 'MV_KANUN': resultset[1], 'MV_ILK_MAO': resultset[2],
                     'MV_MAO': resultset[3], 'MV_ILK_GGO': resultset[4], 'MV_GGO': resultset[5],
                     'MV_ILK_GO': resultset[6], 'MV_GO': resultset[7], 'MV_SSO': resultset[8], 'MV_YSO': resultset[9]}

    l.info('data succesfully recorded for %s' % idmv)
    return resultsetDict


def mvCsvToDb(record_option):
    """
    if record_option is 1 it will save mvdata to MV table then save numeric data to Mv_records
    if record_option is 2 it will only save numeric data to Mv_records
    """

    allfiles = []
    for files in glob.glob('*.csv'):
        allfiles.append(files)
    mv_info = mvinfo(str(allfiles[0]))

    for mv in mv_info:
        if record_option == 1:
            MV.objects.filter(
                mv_id=int(mv.get('MVNO'))
            ).update(date_last=datetime.datetime.now())

        if record_option == 2:
            mvrecord = MV(
                mv_id=int(mv.get('MVNO')),
                name=mv.get('MVNAME'),
                party=mv.get('MVPARTY'),
                city=mv.get('MVCITY')
            )
            mvrecord.save()

        mvdata = Mv_records(
            mv=MV.objects.get(pk=int(mv.get('MVNO'))),
            date=datetime.date.today(),
            ilk_kanun=mv.get('MV_ILK_KANUN'),
            kanun=mv.get('MV_KANUN'),
            sso=mv.get('MV_SSO'),
            yso=mv.get('MV_YSO'),
            ilk_mao=mv.get('MV_ILK_MAO'),
            mao=mv.get('MV_MAO'),
            ilk_ggo=mv.get('MV_ILK_GGO'),
            ggo=mv.get('MV_GGO'),
            ilk_go=mv.get('MV_ILK_GO'),
            go=mv.get('MV_GO')
        )
        mvdata.save()

    print('success')


    # return mv_info


if __name__ == "__main__":
    main()