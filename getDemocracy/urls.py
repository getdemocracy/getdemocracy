from django.conf.urls import patterns, url
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()
from django.views.generic.simple import direct_to_template

if settings.MAINTENANCE_MODE:
    urlpatterns = patterns(
        '',
        url(r'^$', 'gd.views.home_maintenance', name='home'),
        url(r'^detay/', 'gd.views.home_maintenance', name='detail'),
    )

else:
    urlpatterns = patterns(
        '',
        url(r'^$', 'gd.views.home', name='home'),
        url(r'^getmvdata/all/$', 'gd.views.mvnames'),
        url(r'^getmvdata/(?P<id>[\w-]+)/$', 'gd.views.getmvdata'),
        url(r'^detay/mv/$', 'gd.views.detail', name='detailmv'),
        url(r'^detay/parti/$', 'gd.views.detailParty', name='detailparty'),
        url(r'^detay/sehir/$', 'gd.views.detailCity', name='detailcity'),
        url(r'^enler/$', 'gd.views.toptemp', name='toptemp'),
        url(r'^en/$', 'gd.views.top', name='top'),
        url(r'^twitanaliz/$', 'twitanaliz.views.tweetAnalysis', name="twitanaliz"),
        url(r'^twitanaliz/dokum/$', 'twitanaliz.views.tweetResults', name="twitresults"),
        url(r'^nedir/$', direct_to_template, {'template': 'about.html'}, name="readme"),

        # url(r'^admin/', include(admin.site.urls)),
        url(r'^accounts/login/$', 'django.contrib.auth.views.login', name="login"),
    )

urlpatterns += staticfiles_urlpatterns()
