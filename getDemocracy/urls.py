from django.conf.urls import patterns, include, url
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

if settings.MAINTENANCE_MODE:
    urlpatterns = patterns('',
        # Examples:
        url(r'^$', 'gd.views.home_maintenance', name='home'),
        url(r'^detay/', 'gd.views.home_maintenance', name='detail'),
    )

else:
    urlpatterns = patterns('',
        # Examples:
        url(r'^$', 'gd.views.home', name='home'),
        url(r'^getmvdata/all/', 'gd.views.mvnames'),
        url(r'^getmvdata/(\d{4})/$', 'gd.views.getmvdata'),
        url(r'^detay/', 'gd.views.detail', name='detail'),
        # url(r'^getDemocracy/', include('getDemocracy.foo.urls')),

        # Uncomment the admin/doc line below to enable admin documentation:
        # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

        # Uncomment the next line to enable the admin:
        # url(r'^admin/', include(admin.site.urls)),
    )

urlpatterns += staticfiles_urlpatterns()
