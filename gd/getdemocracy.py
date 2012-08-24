import urllib2
from bs4 import BeautifulSoup
import re, os, sys, csv
import gdsettings as gds

mv_info = {}
mv_ids = []
mv_all_work = {}
def mv_specs():
   html = BeautifulSoup(urllib2.urlopen(gds.MV_LIST_LINK), from_encoding="iso-8859-9")   
   city = ""
   mvno = ""
   mvname = ""
   mvparty = ""
   parseData = html.table.table.table.find_all('td', align="left")
   dataToArray = str(parseData).split(', ')[1:-1]

   # print dataToArray

   for data in dataToArray:
      if '<b>' in data:
         city = data[20:-9]

      if 'href' in data:
         mvno = data[112:116]
         mvname = data[118:-9]
         mv_ids.append(mvno)

      if not '<b>' in data and not 'href' in data:
         mvparty = data[17:-5]
         mv_info[mvno] = mvname, mvparty, city

   print mv_info

   datatocsv = csv.DictWriter(open('../mvdb.csv', 'w'), mv_info.keys())
   datatocsv.writeheader()
   datatocsv.writerow(mv_info)

   print "success"
   # listWriter = csv.DictWriter(open('/Users/broberts/Desktop/Sum_CSP1_output.csv', 'wb'), fieldnames=itemDict[itemDict.keys()[0]].keys(), delimiter=',', quotechar='|', quoting=csv.QUOTE_MINIMAL)   

def mvinfo():
   mv_specs()
   print mv_ids

def mv_workcount(idmv):
   all_links1 = [gds.MV_ILK_KANUN, gds.MV_KANUN, gds.MV_ILK_MAO, gds.MV_MAO, gds.MV_ILK_GGO, gds.MV_GGO, gds.MV_ILK_GO, gds.MV_GO]
   all_links2 = [gds.MV_SSO, gds.MV_YSO]
   
   resultset   = []

   for link in all_links1:
      html = BeautifulSoup(urllib2.urlopen(link + str(idmv)), "lxml")
      for table in html.find_all('table'):
         if '2' in table.get('border'):
            resultset.append(len(table.find_all('tr'))-1)

   for link in all_links2:
      html = BeautifulSoup(urllib2.urlopen(link + str(idmv)), "lxml")
      resultset.append(len(html.find_all('tr', valign="TOP"))/2)

   return resultset

def gather_all_work():
   mv_specs()
   i = 0
   for key in mv_ids:
      mv_all_work[key] = mv_workcount(key)
      i += 1
      print i

   datatocsv = csv.DictWriter(open('../mv_works_db.csv', 'wb'), mv_all_work.keys())
   datatocsv.writeheader()
   datatocsv.writerow(mv_all_work)

   return mv_all_work

if __name__=="__main__":
   # gather_all_work()
   mv_specs()
   # mvinfo()
