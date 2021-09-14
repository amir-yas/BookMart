from django.contrib import admin

# Register your models here.
from django.contrib.admin import models

from .models import Product, Category, Orders, Seller

from django import forms
from django.contrib import admin
from django.contrib.auth import get_user_model
from django.contrib.admin.widgets import FilteredSelectMultiple
from django.contrib.auth.models import Group


User = get_user_model()


# Create ModelForm based on the Group model.
class GroupAdminForm(forms.ModelForm):
    class Meta:
        model = Group
        exclude = []

    # Add the users field.
    users = forms.ModelMultipleChoiceField(
         queryset=User.objects.all(),
         required=False,
         # Use the pretty 'filter_horizontal widget'.
         widget=FilteredSelectMultiple('users', False)
    )

    def __init__(self, *args, **kwargs):
        # Do the normal form initialisation.
        super(GroupAdminForm, self).__init__(*args, **kwargs)
        # If it is an existing group (saved objects have a pk).
        if self.instance.pk:
            # Populate the users field with the current Group users.
            self.fields['users'].initial = self.instance.user_set.all()

    def save_m2m(self):
        # Add the users to the Group.
        self.instance.user_set.set(self.cleaned_data['users'])

    def save(self, *args, **kwargs):
        # Default save
        instance = super(GroupAdminForm, self).save()
        # Save many-to-many data
        self.save_m2m()
        return instance


# Unregister the original Group admin.
admin.site.unregister(Group)

# Create a new Group admin.
class GroupAdmin(admin.ModelAdmin):
    # Use our custom form.
    form = GroupAdminForm
    # Filter permissions horizontal as well.
    filter_horizontal = ['permissions']
# Register the new Group ModelAdmin.
admin.site.register(Group, GroupAdmin)

class ProductAdmin(admin.ModelAdmin):

    list_display = [
        'product_name',
        'product_desc',
        'product_dimension',
        'product_price',
        'product_image',
        'product_category',
        'total_product_sold'
    ]

    fields = [
        'product_name',
        'product_desc',
        'product_dimension',
        'product_price',
        'product_image',
        'product_category'

    ]
    def get_queryset(self, request):
        qs = super(ProductAdmin, self).get_queryset(request)
        if request.user.is_superuser:
            return qs.all()
        else:
            user_id = request.user.id
            seller_id = Seller.objects.get(seller_user_id=user_id)
            return qs.filter(product_added_by_seller_id=seller_id.id)
    #
    def save_model(self, request, obj, form, change):
        if getattr(obj, 'product_added_by_seller_id', None) is None:
            user_id = request.user.id
            seller_id = Seller.objects.get(seller_user_id=user_id)
            obj.product_added_by_seller_id = seller_id.id
        obj.save()
admin.site.register(Product, ProductAdmin)

admin.site.register(Seller)
admin.site.register(Category)
admin.site.register(Orders)




admin.site.site_header = "BookMart Admin Panel"