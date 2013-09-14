# -*- coding: utf-8 -*-
from django.contrib.auth.decorators import login_required
from django.shortcuts import render_to_response
import json, oauth2 as oauth
from django.template import RequestContext, context
from models import *
from dateutil import parser as p


@login_required
def getTweets(request):
    consumer = oauth.Consumer(key='vYnGquLkJmEuzMiebWnHIg', secret='d0RimJ09ubH916K08I6HEw4uXaNyn2sJpIpzLyqs')
    token = oauth.Token(key='302219777-ZSY3YhDYPXbGTQhy8yXriMWgqydCQqjoTwEZRxvn', secret='26mOq3jblqKowxM06fh2bDCNQtbirz28rE0eGto2Jk')
    client = oauth.Client(consumer, token)

    resp, content = client.request(
        'https://api.twitter.com/1.1/statuses/user_timeline.json?count=200&screen_name=TBMMGenelKurulu',
        method="GET",
    )
    jsonveri = json.loads(content)

    last_item = twit.objects.values('twit_id').order_by('-twit_id')[0]['twit_id'] if twit.objects.all().count() > 0 else 0

    for item in jsonveri:
        if item['id'] > last_item:
            print item['id']
            if 'kabul edilmedi' in item['text']:
                twitRecord = twit(
                    twit_id=item['id'],
                    twit_text=item['text'],
                    twit_subject=jsonveri[jsonveri.index(item)+1]['text'] if 'Grubu' in item['text'] else None,
                    twit_created=p.parse(item['created_at'])
                )
                twitRecord.save()
            elif 'kabul edildi' in item['text']:
                twitRecord = twit(
                    twit_id=item['id'],
                    twit_text=item['text'],
                    twit_subject=jsonveri[jsonveri.index(item)+1]['text'] if 'Grubu' in item['text'] else None,
                    twit_created=p.parse(item['created_at'])
                )
                twitRecord.save()
            else:
                twitRecord = twit(
                    twit_id=item['id'],
                    twit_text=item['text'],
                    twit_created=p.parse(item['created_at'])
                )
                twitRecord.save()

    return render_to_response('twitanaliz/result.html', {'result': 'success'})


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