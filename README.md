# BookMart

BookMart is the book store website created in python django and MySQL. it has the following types of users
1. admin: Admin can see all the products, orders, categories and all the registered users. Only admin can create sellers accounts via django-admin. 
2. seller: Sellers can add products, categories and can only see products added by him with total number of sell of the products. 
3. buyers: Buyers can buy the books from the website

How to Run the Project: First clone the project from GitHub Repo and then create a vitual environment and install the libraries from the requirements.txt files also Repo has Database
so dump the Database in your system.

Command to Run the Project: python manage.py runserver

Credentials: for login open http://127.0.0.1:8000/admin/
For admin user: Username = amir, password = 1234

for seller1 user: username = book_seller, password = sell1234

for seller2 user: username = seller2, password = sell1234
