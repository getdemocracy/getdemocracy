#!/usr/bin/python
# -*- coding: utf-8 -*-

import urllib2
from bs4 import BeautifulSoup
import re, os, sys, csv
import gdsettings as gds

mv_ids = []
mv_all_work = {}
parties = []
def main():
   html = BeautifulSoup(urllib2.urlopen(gds.MV_LIST_LINK), from_encoding="iso-8859-9")   
   city = ""
   mvno = ""
   mvname = ""
   mvparty = ""
   parseData = html.table.table.table.find_all('td', align="left")
   dataToArray = []
   d = []

   for info in parseData:
      d.append(info)

   for x in d:
      dataToArray.append(str(x))

   listOfMv = csv.writer(open('../mvlist.csv', 'w'))
   listOfParties = csv.writer(open('../partylist.csv', 'w'))

   for data in dataToArray:
      if '<b>' in data:
         city = data[20:-9]

      if 'href' in data:
         mvno = data[112:116]
         mvname = data[118:-9]
         mv_ids.append(mvno)

      if not '<b>' in data and not 'href' in data:
         mvparty = data[17:-5]
         if not mvparty in parties:
            parties.append(mvparty)
            listOfParties.writerow([mvparty])
         listOfMv.writerow([mvno, mvname, mvparty, city])

def mvinfo():
   listOfMv = csv.reader(open('mvlist.csv'))
   mv_info = []
   for mv in listOfMv:
      mv_info.append(mv)
   return mv_info

def getpartylist():
   listOfParties = csv.reader(open('../partylist.csv'))
   parties = []
   for party in listOfParties:
      parties.append(party)
   return parties

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
   main()
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
   # main()
   mvinfo()
   # getpartylist()