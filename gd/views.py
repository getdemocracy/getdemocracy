from django.shortcuts import render_to_response
from getdemocracy import mvinfo
import gdsettings as gds
from models import MV, Party, MVWorkCount

def update_1982(request):
	get_mv_id = mvinfo()

	for k, v in get_mv_id.iteritems():

		mvq = MV(name=v, mv_id=int(k), party=Party.objects.get(pk=1), city="Ankara")
		mvq.save()

	return render_to_response('index.html', {'update_status':"updated"})

def home(request):
	get_mv_id = mvinfo()
	ilk_kanun = gds.MV_ILK_KANUN
	return render_to_response('index.html', {'get_mv_id':get_mv_id, 'ilk_kanun':ilk_kanun})