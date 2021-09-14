from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('category/<int:cat_id>', views.category, name='category'),
    path('category/<int:cat_id>/<str:name>', views.book_page, name='book_page'),
    path('cart', views.cart, name='cart'),
    path('login', views.login, name='login'),
    path('signup', views.signup, name='signup'),
    path('logout', views.logout, name='logout')
]