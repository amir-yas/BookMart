import json

from django.http import HttpResponse
from django.shortcuts import render
from .models import *
from django.contrib.auth.models import User, auth
from django.contrib.auth.decorators import login_required
from django.template.context_processors import csrf
from django.shortcuts import redirect
from django.contrib import messages
from django.db.models import F
# Create your views here.


def index(request):
    items = Product.objects.all()
    context = {'prod': items}
    return render(request, 'index.html', context)

def category(request, cat_id):
    is_cat_id = Product.objects.filter(product_category=cat_id)
    if is_cat_id:
        context = {'cat_item': is_cat_id}
        return render(request, 'category.html', context)
    else:
        return render(request, '404.html')

def book_page(request, cat_id, name):
    book = Product.objects.filter(product_name=name, product_category=cat_id)
    if book:
        context = {'book_item': book[0]}
        return render(request, 'book-page.html', context)
    else:
        return render(request, '404.html')

@login_required(login_url='/login')
def cart(request):
    if request.method == 'POST':
        item_json = request.POST.get('itemsJson', '')
        name = request.POST.get('name', '')
        address = request.POST.get('address', '')
        city = request.POST.get('city', '')
        zipcode = request.POST.get('zipcode', '')
        order = Orders(item_json=item_json, name=name, address=address, city=city, zipcode=zipcode)
        order.save()
        thank = True
        id = order.order_id
        data = json.loads(item_json)
        purchased_product = data["null"][1]
        purchased_qty = data["null"][0]
        Product.objects.filter(product_name=purchased_product).update(total_product_sold=F("total_product_sold") + int(purchased_qty))
        return render(request, 'cart.html',  {'thank':thank, 'id': id})
    return render(request, "cart.html")


def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        psd = request.POST['psd']
        user = auth.authenticate(username=username, password=psd)
        if user is not None:
            auth.login(request, user)
            return redirect('/')
        else:
            messages.info(request, 'Mobile number or password is incorrect')
            return redirect('login')
    else:
        return render(request, 'login.html')


def signup(request):
    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        psd = request.POST['psd']
        rpsd = request.POST['rpsd']
        username = request.POST['username']

        if psd == rpsd:
            if User.objects.filter(username=username).exists():
                messages.info(request, 'Mobile Number already registered')
                return redirect('signup')
            elif User.objects.filter(email=email).exists():
                messages.info(request, 'Email already registered')
                return redirect('signup')
            else:
                user = User.objects.create_user(username=username, email=email, password=psd, first_name=first_name,
                                                last_name=last_name)
                user.save()
                return redirect('login')
        else:
            messages.info(request, "Passsword doesn't match")
            return redirect('signup')

    else:
        return render(request, 'signup.html')


def logout(request):
    auth.logout(request)
    return redirect('/')