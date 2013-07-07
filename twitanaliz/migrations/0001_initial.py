# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'twit'
        db.create_table('twitanaliz_twit', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('twit_id', self.gf('django.db.models.fields.IntegerField')(unique=True)),
            ('twit_text', self.gf('django.db.models.fields.CharField')(max_length=255, db_index=True)),
            ('twit_subject', self.gf('django.db.models.fields.CharField')(max_length=255, null=True, db_index=True)),
            ('twit_created', self.gf('django.db.models.fields.DateTimeField')()),
        ))
        db.send_create_signal('twitanaliz', ['twit'])


    def backwards(self, orm):
        # Deleting model 'twit'
        db.delete_table('twitanaliz_twit')


    models = {
        'twitanaliz.twit': {
            'Meta': {'object_name': 'twit'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'twit_created': ('django.db.models.fields.DateTimeField', [], {}),
            'twit_id': ('django.db.models.fields.IntegerField', [], {'unique': 'True'}),
            'twit_subject': ('django.db.models.fields.CharField', [], {'max_length': '255', 'null': 'True', 'db_index': 'True'}),
            'twit_text': ('django.db.models.fields.CharField', [], {'max_length': '255', 'db_index': 'True'})
        }
    }

    complete_apps = ['twitanaliz']