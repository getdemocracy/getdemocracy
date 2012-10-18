from django.shortcuts import render_to_response
from getdemocracy import main as updateMvInfo, mvinfo
import gdsettings as gds
from models import MV, Party, MVWorkCount
import datetime, glob

def update_1982(request):
	updateMvInfo()

	# for party in partylist:
	# 	p = Party(name=party)
	# 	p.save()

	# print "parties saved" 

	# for k, v in get_mv_info.iteritems():

	# 	mvq = MV(name=v, mv_id=int(k), party=Party.objects.get(pk=1), city="Ankara")
	# 	mvq.save()

	return render_to_response('index.html', {'update_status':"updated"})

def home(request):
	allfiles = []
	for files in glob.glob('*.csv'):
		allfiles.append(files)
	mv_info = mvinfo(str(allfiles[0]))
	ilk_kanun = gds.MV_ILK_KANUN
	return render_to_response('index.html', {'mv_info':mv_info, 'filelist':allfiles})