# Generated by Django 2.0.6 on 2018-06-17 23:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('norlonn', '0003_auto_20180617_2351'),
    ]

    operations = [
        migrations.AlterField(
            model_name='norlonnreport',
            name='date',
            field=models.DateField(unique=True),
        ),
    ]
