from django.contrib.auth.models import User
from django.db import models

# Create your models here.

class Seller(models.Model):
    seller_id = models.AutoField
    seller_name = models.CharField(max_length=25)
    seller_images = models.ImageField(upload_to="seller_images", default="")
    seller_user = models.ForeignKey(User, on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Seller'
        verbose_name_plural = 'Sellers'
        db_table = 'django_sellers'

    def __str__(self):
        return self.seller_name


class Category(models.Model):
    cat_name = models.CharField(max_length=30)

    class Meta:
        verbose_name = "category"
        verbose_name_plural = "categories"
        db_table = 'django_categories'

    def __str__(self):
        return self.cat_name

class Product(models.Model):
    product_name = models.CharField(max_length=100, unique=True)
    product_desc = models.CharField(max_length=150, null=True, blank=True)
    product_dimension = models.CharField(max_length=25, null=True, blank=True)
    product_price = models.CharField(max_length=15)
    product_image = models.ImageField(upload_to="images", default="")
    product_category = models.ForeignKey(Category, on_delete=models.CASCADE)
    total_product_sold = models.PositiveIntegerField(default=0)
    product_add_date = models.DateTimeField(auto_now_add=True,  blank=True)
    product_added_by_seller = models.ForeignKey(Seller, on_delete=models.CASCADE)

    # def product_image(self):
    #     return mark_safe('<a href="self.product_image">self.product_image</a>')

    # def product_image(self):
    #     return '<img src="%s"/>' % self.product_image
    # product_image.allow_tags = True
    class Meta:
        verbose_name = "product"
        verbose_name_plural = "products"
        db_table = 'django_products'

    def __str__(self):
        return self.product_name

class Orders(models.Model):
    order_id = models.AutoField(primary_key=True)
    item_json = models.TextField()
    name = models.CharField(max_length=50)
    address = models.CharField(max_length=500)
    city = models.CharField(max_length=50)
    zipcode = models.CharField(max_length=50)

    class Meta:
        verbose_name = "order"
        verbose_name_plural = "orders"
        db_table = 'django_orders'

    def __str__(self):
        return self.name