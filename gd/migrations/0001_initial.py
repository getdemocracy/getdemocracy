# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'MV'
        db.create_table('gd_mv', (
            ('mv_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=30)),
            ('party', self.gf('django.db.models.fields.CharField')(max_length=15)),
            ('city', self.gf('django.db.models.fields.CharField')(max_length=20, db_index=True)),
        ))
        db.send_create_signal('gd', ['MV'])

        # Adding model 'Mv_records'
        db.create_table('gd_mv_records', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('mv', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['gd.MV'])),
            ('date', self.gf('django.db.models.fields.DateField')(db_index=True)),
            ('ilk_kanun', self.gf('django.db.models.fields.IntegerField')()),
            ('kanun', self.gf('django.db.models.fields.IntegerField')()),
            ('sso', self.gf('django.db.models.fields.IntegerField')()),
            ('yso', self.gf('django.db.models.fields.IntegerField')()),
            ('ilk_mao', self.gf('django.db.models.fields.IntegerField')()),
            ('mao', self.gf('django.db.models.fields.IntegerField')()),
            ('ilk_ggo', self.gf('django.db.models.fields.IntegerField')()),
            ('ggo', self.gf('django.db.models.fields.IntegerField')()),
            ('ilk_go', self.gf('django.db.models.fields.IntegerField')()),
            ('go', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal('gd', ['Mv_records'])


    def backwards(self, orm):
        # Deleting model 'MV'
        db.delete_table('gd_mv')

        # Deleting model 'Mv_records'
        db.delete_table('gd_mv_records')


    models = {
        'gd.mv': {
            'Meta': {'object_name': 'MV'},
            'city': ('django.db.models.fields.CharField', [], {'max_length': '20', 'db_index': 'True'}),
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