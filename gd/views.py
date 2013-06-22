#!/usr/bin/python
# -*- coding: utf-8 -*-
from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.template import RequestContext
from models import MV, Mv_records
from django.db.models import Count
from django.core.serializers import serialize
import json


def home(request):
    """
    home view
    """
    index_data = {
        'partypercent': MV.objects.values('party').annotate(dcount=Count('party'))
    }

    return render_to_response('index.html', index_data, context_instance=RequestContext(request))


def home_maintenance(request):
    """
    view for maintenance mode
    """
    mNote = 'Şu anda ek geliştirmeler yapılmaktadır.'
    return render_to_response('index.html', {'mnote': mNote}, context_instance=RequestContext(request))


def detail(request):
    mvdata = MV.objects.all()
    return render_to_response('detail.html', {'mvdata': mvdata}, context_instance=RequestContext(request))


def toptemp(request):
    return render_to_response('top.html', context_instance=RequestContext(request))


def top(request):
    last_date = Mv_records.objects.order_by('-date')[1].date

    req_data = request.GET

    mvdata_queryset = Mv_records.objects.filter(date=last_date).order_by('-'+req_data.__getitem__('datatip'))[:10]
    mvdata_top = []
    for row in mvdata_queryset:
        mvdata_top.append({'mv_id': row.mv.mv_id, 'mv_name': row.mv.name, 'mv_party': row.mv.party, 'skor': row.__getattribute__(req_data.__getitem__('datatip'))})

    mvx = json.dumps(mvdata_top)
    return HttpResponse(mvx, mimetype='application/json')


def getmvdata(request, id):
    """
    :param request:
    :param mvnum: mv_id
    :return: json data
    """

    print(id)
    numbersof = Mv_records.objects.filter(mv=id).order_by('-date')
    mvx = serialize('json', numbersof)
    return HttpResponse(mvx, mimetype='application/json')


def mvnames(request):
    allnames = MV.objects.defer('mv_id', 'name')
    all_names = serialize('json', allnames, fields=('mv_id', 'name'))
    return HttpResponse(all_names, mimetype='application/json')