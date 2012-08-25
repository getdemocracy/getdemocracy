from django.shortcuts import render_to_response
from getdemocracy import mvinfo, getpartylist
import gdsettings as gds
from models import MV, Party, MVWorkCount

def update_1982(request):
	get_mv_info = mvinfo()
	partylist = getpartylist()

	# for party in partylist:
	# 	p = Party(name=party)
	# 	p.save()

	# print "parties saved" 

	# for k, v in get_mv_info.iteritems():

	# 	mvq = MV(name=v, mv_id=int(k), party=Party.objects.get(pk=1), city="Ankara")
	# 	mvq.save()

	return render_to_response('index.html', {'update_status':"updated"})

def home(request):
	mv_info = mvinfo()
	ilk_kanun = gds.MV_ILK_KANUN
	return render_to_response('index.html', {'mv_info':mv_info, 'ilk_kanun':ilk_kanun})