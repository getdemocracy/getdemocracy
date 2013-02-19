#!/usr/bin/python
# -*- coding: utf-8 -*-
from django.shortcuts import render_to_response, get_object_or_404
from django.http import HttpResponse
from django.template import RequestContext
from models import MV, Mv_records
from django.db.models import Count, Sum
from django.core.serializers import serialize


def home(request):
    """
    home view
    """
    partypercent = MV.objects.values('party').annotate(dcount=Count('party'))
    return render_to_response('index.html', {'partypercent': partypercent}, context_instance=RequestContext(request))


def home_maintenance(request):
    """
    view for maintenance mode
    """
    mNote = 'Şu anda ek geliştirmeler yapılmaktadır.'
    return render_to_response('index.html', {'mnote': mNote}, context_instance=RequestContext(request))


def detail(request):
    mvdata = MV.objects.all()
    return render_to_response('detail.html', {'mvdata': mvdata}, context_instance=RequestContext(request))


def getmvdata(request, mvnum):
    """

    :param request:
    :param mvnum: mv_id
    :return: json data
    """
    numbersof = Mv_records.objects.filter(mv=mvnum).order_by('-date')
    mvx = serialize('json', numbersof)
    return HttpResponse(mvx, mimetype='application/json')


def mvnames(request):
    allnames = MV.objects.defer('mv_id', 'name')
    all_names = serialize('json', allnames, fields=('mv_id', 'name'))
    return HttpResponse(all_names, mimetype='application/json')

# [{"pk": 236, "model": "gd.mv_records", "fields": {"ilk_go": 0, "yso": 0, "ilk_ggo": 0, "ilk_mao": 0, "go": 0, "sso": 0, "mv": 6025, "kanun": 1, "date": "2013-02-14", "ggo": 0, "ilk_kanun": 0, "mao": 0}}, {"pk": 785, "model": "gd.mv_records", "fields": {"ilk_go": 0, "yso": 0, "ilk_ggo": 0, "ilk_mao": 0, "go": 0, "sso": 0, "mv": 6025, "kanun": 1, "date": "2013-02-14", "ggo": 0, "ilk_kanun": 0, "mao": 0}}]
# [{"pk": 6025, "model": "gd.mv", "fields": {"party": "AK Parti", "name": "Egemen BA\u011eI\u015e", "city": "\u0130STANBUL"}}]