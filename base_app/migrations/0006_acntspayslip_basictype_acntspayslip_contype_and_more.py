# Generated by Django 4.0.3 on 2022-03-08 04:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base_app', '0005_alter_user_registration_account_no'),
    ]

    operations = [
        migrations.AddField(
            model_name='acntspayslip',
            name='basictype',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='acntspayslip',
            name='contype',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='acntspayslip',
            name='deltype',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='acntspayslip',
            name='hratype',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='acntspayslip',
            name='instype',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='acntspayslip',
            name='leatype',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='acntspayslip',
            name='protype',
            field=models.CharField(default='', max_length=255),
        ),
    ]
