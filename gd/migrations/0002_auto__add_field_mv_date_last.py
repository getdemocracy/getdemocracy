# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'MV.date_last'
        db.add_column('gd_mv', 'date_last',
                      self.gf('django.db.models.fields.DateTimeField')(auto_now=True, default=datetime.datetime(2013, 6, 30, 0, 0), blank=True),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'MV.date_last'
        db.delete_column('gd_mv', 'date_last')


    models = {
        'gd.mv': {
            'Meta': {'object_name': 'MV'},
            'city': ('django.db.models.fields.CharField', [], {'max_length': '20', 'db_index': 'True'}),
            'date_last': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'mv_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'party': ('django.db.models.fields.CharField', [], {'max_length': '15'})
        },
        'gd.mv_records': {
            'Meta': {'object_name': 'Mv_records'},
            'date': ('django.db.models.fields.DateField', [], {'db_index': 'True'}),
            'ggo': ('django.db.models.fields.IntegerField', [], {}),
            'go': ('django.db.models.fields.IntegerField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'ilk_ggo': ('django.db.models.fields.IntegerField', [], {}),
            'ilk_go': ('django.db.models.fields.IntegerField', [], {}),
            'ilk_kanun': ('django.db.models.fields.IntegerField', [], {}),
            'ilk_mao': ('django.db.models.fields.IntegerField', [], {}),
            'kanun': ('django.db.models.fields.IntegerField', [], {}),
            'mao': ('django.db.models.fields.IntegerField', [], {}),
            'mv': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['gd.MV']"}),
            'sso': ('django.db.models.fields.IntegerField', [], {}),
            'yso': ('django.db.models.fields.IntegerField', [], {})
        }
    }

    complete_apps = ['gd']