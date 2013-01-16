from django.shortcuts import render_to_response, get_object_or_404
from django.http import HttpResponse
from django.template import RequestContext
from models import MV, Mv_records
from django.db.models import Count, Sum
from django.core import serializers

def home(request):
	partypercent = MV.objects.values('party').annotate(dcount=Count('party'))
	return render_to_response('index.html', {'partypercent': partypercent}, context_instance=RequestContext(request))

def detail(request):
	mvdata = MV.objects.all()
	return render_to_response('detail.html', {'mvdata': mvdata}, context_instance=RequestContext(request))

def getmvdata(request, mvnum):
	numbersof = Mv_records.objects.filter(mv=mvnum)
	mvx = serializers.serialize('json', numbersof)
	return HttpResponse(mvx, mimetype='application/json')

def mvnames(request):
    allnames = MV.objects.all()
    all_names = serializers.serialize('json',allnames)
    return HttpResponse(all_names,mimetype='application/json')
