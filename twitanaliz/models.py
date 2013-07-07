from django.db import models


class twit(models.Model):
    twit_id = models.BigIntegerField(unique=True)
    twit_text = models.CharField(max_length=255, db_index=True)
    twit_subject = models.CharField(max_length=255, db_index=True, null=True)
    twit_created = models.DateTimeField()