# Generated by Django 3.2.3 on 2021-09-14 09:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('bookmart_app', '0002_alter_product_product_added_by'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='product_added_by',
            new_name='product_added_by_seller',
        ),
    ]
