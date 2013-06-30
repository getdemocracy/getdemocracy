from django.shortcuts import render_to_response
import json, os, oauth2 as oauth
from models import *


def getTweets():
    consumer = oauth.Consumer(key='vYnGquLkJmEuzMiebWnHIg', secret='d0RimJ09ubH916K08I6HEw4uXaNyn2sJpIpzLyqs')
    token = oauth.Token(key='302219777-ZSY3YhDYPXbGTQhy8yXriMWgqydCQqjoTwEZRxvn', secret='26mOq3jblqKowxM06fh2bDCNQtbirz28rE0eGto2Jk')
    client = oauth.Client(consumer, token)

    resp, content = client.request(
        'https://api.twitter.com/1.1/statuses/user_timeline.json?count=200&screen_name=TBMMGenelKurulu',
        method="GET",
    )
    jsonveri = json.loads(content)

    rejected = {}
    admitted = {}
    for item in jsonveri:
        if 'kabul edilmedi' in item['text']:
            rejected.update({jsonveri.index(item): {'rejecty': jsonveri[jsonveri.index(item)+1]['text'], 'rejjy': item['text']} if 'Grubu' in item['text'] else {'rejjy': item['text']}})
        elif 'kabul edildi' in item['text']:
            admitted.update({jsonveri.index(item): {'admity': jsonveri[jsonveri.index(item)+1]['text'], 'addy': item['text']} if 'Grubu' in item['text'] else {'addy': item['text']}})

    return jsonveri


def tweetResults(request):
    data = twit.objects.all()

    return render_to_response('twitanaliz/twitalemi.html', data)