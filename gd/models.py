from django.db import models

class Party(models.Model):
	name = models.CharField(max_length = 30)	

class MV(models.Model):
	mv_id = models.IntegerField()
	name  = models.CharField(max_length = 30)
	party = models.CharField(max_length = 15)
	city  =	models.CharField(max_length = 20)

class MVWorkCount(models.Model):
	mv_id     = models.ForeignKey(MV)
	ilk_kanun = models.IntegerField()
	kanun     = models.IntegerField()
	sso       = models.IntegerField()
	yso       = models.IntegerField()
	ilk_mao   = models.IntegerField()
	mao       = models.IntegerField()
	ilk_ggo   = models.IntegerField()
	ggo       = models.IntegerField()
	ilk_go    = models.IntegerField()
	go        = models.IntegerField()
		