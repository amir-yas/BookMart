if(localStorage.getItem('cart') == null){
    var cart = {};
    }
    else
    {
    cart = JSON.parse(localStorage.getItem('cart'));
    document.getElementById('cart').innerHTML = Object.keys(cart).length;
    }
    $('.divpr').on('click', 'button.cart', function(){
    var ids = document.getElementById("Tshirt-Id")
    var naam = document.getElementById("name")
    if (cart[ids] != undefined){
        qty= cart[ids][0]+1;
        name = document.getElementById('name', +ids).value;
        price = document.getElementById('price', +ids).value;
        cart[ids] = [qty, name, price];
    }
    else
    {
        qty= 1;
        name = document.getElementById('name', +ids).value;
        price = document.getElementById('price', +ids).innerHTML;
        cart[ids] = [qty, name, price];
    }
    localStorage.setItem('cart', JSON.stringify(cart));
    document.getElementById('cart').innerHTML = Object.keys(cart).length;
    });