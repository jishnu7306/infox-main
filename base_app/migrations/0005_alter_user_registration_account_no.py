# Generated by Django 4.0.3 on 2022-03-07 11:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base_app', '0004_alter_paymentlist_course_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user_registration',
            name='account_no',
            field=models.CharField(default='', max_length=200, null=True),
        ),
    ]