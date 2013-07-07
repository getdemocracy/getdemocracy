# -*- coding: utf-8 -*-
from django.contrib.auth.decorators import login_required
from django.shortcuts import render_to_response
import json, oauth2 as oauth
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


def tweetResults(request):
    data = twit.objects.all().order_by('-twit_created')

    return render_to_response('twitanaliz/twitalemi.html', {'twitdata': data})