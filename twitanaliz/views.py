# -*- coding: utf-8 -*-
from django.shortcuts import render_to_response
import json, oauth2 as oauth
from django.template import RequestContext, context
from models import *
from dateutil import parser as p


def tweetAnalysis(request):
    q = twit.objects.values('twit_id', 'twit_text', 'twit_subject')
    q_list = list(q)
    approve = dict()
    deny = dict()
    for i,v in enumerate(q_list):
        if 'kabul edildi' in v['twit_text']:
            approve.update({i:v})
        if 'kabul edilmedi' in v['twit_text']:
            deny.update({i:v})

    # from pytagcloud import create_tag_image, make_tags
    # from pytagcloud.lang.counter import get_tag_counts
    #
    # removal_words = ['görüşülüyor', 'önerisi', 'görüşülmesi', 'önergesinin', 'dair', 'grubunun']
    # removal_words_utf8 = [word.decode('utf-8') for word in removal_words]
    #
    # print removal_words_utf8
    #
    # deny_text = ' '.join([v['twit_text']+" "+v['twit_subject']if v['twit_subject'] else "" for i,v in deny.iteritems()])
    # approve_text = ' '.join([v['twit_text']+" "+v['twit_subject']if v['twit_subject'] else "" for i,v in approve.iteritems()])
    #
    # print type(deny_text)
    #
    # for word in removal_words_utf8:
    #     [deny_txt.replace(word, u' ') for deny_txt in deny_text]
    #     approve_text.replace(word, u' ')
    #
    #     print type(word)
    #
    # deny_tags = make_tags(get_tag_counts(deny_text), maxsize=100)
    # approve_tags = make_tags(get_tag_counts(approve_text), maxsize=100)
    #
    # create_tag_image(deny_tags, 'media/deny.png', size=(400, 400), fontname='Cantarell')
    # create_tag_image(approve_tags, 'media/approve.png', size=(400, 400), fontname='Cantarell')

    return render_to_response('twitanaliz/analysis.html', {'approve': json.dumps(approve), 'deny': json.dumps(deny)}, context_instance=RequestContext(request, context))


def tweetResults(request):
    data = twit.objects.all().order_by('-twit_created')

    return render_to_response('twitanaliz/twitalemi.html', {'twitdata': data})