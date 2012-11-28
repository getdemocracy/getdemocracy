from django.shortcuts import render_to_response, get_object_or_404
from django.http import HttpResponse
from django.template import RequestContext
from models import MV, Mv_records
from django.db.models import Count
from django.core import serializers

def home(request):
	mv_info = MV.objects.values('party').annotate(dcount=Count('party'))
	city_info = MV.objects.values('city').annotate(dcount=Count('city'))
	return render_to_response('index.html', {'mv_info': mv_info, 'city_info': city_info}, context_instance=RequestContext(request))

def homejson(request):
	mv_i = MV.objects.values('party').annotate(dcount=Count('party'))
	mvx = serializers.serialize('json', mv_i)
	return HttpResponse(mvx, mimetype='application/json')