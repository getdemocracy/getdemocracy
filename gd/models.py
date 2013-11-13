from django.db import models


class MV(models.Model):
    mv_id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=30)
    party = models.CharField(max_length=15)
    city = models.CharField(max_length=20, db_index=True)
    date_last = models.DateTimeField(auto_now=True)
    mv_works = models.ManyToManyField('Works', related_name='mv_works')


class Mv_records(models.Model):
    mv = models.ForeignKey(MV)
    date = models.DateField(db_index=True)
    ilk_kanun = models.IntegerField()
    kanun = models.IntegerField()
    sso = models.IntegerField()
    yso = models.IntegerField()
    ilk_mao = models.IntegerField()
    mao = models.IntegerField()
    ilk_ggo = models.IntegerField()
    ggo = models.IntegerField()
    ilk_go = models.IntegerField()
    go = models.IntegerField()


class Works(models.Model):
    esas = models.CharField(max_length=512, db_index=True)
    ozet = models.TextField(db_index=True)