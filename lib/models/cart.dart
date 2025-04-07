import "package:flutter/material.dart";
import "package:sneakbro/models/shoe.dart";

class Cart extends ChangeNotifier{
  //list of items for sale

  List<Shoe> shoeShop = [

    Shoe(
        name: 'All Stars',
        imagePath: 'lib/assets/allstars.jpg',
        price: '2000',
        description:
            'Loved by rebels, artists, and trendsetters alike, they’re your everyday go-to with vintage vibes.'),
    Shoe(
        name: 'Bata',
        imagePath: 'lib/assets/bata.jpg',
        price: '1200',
        description:
            'Whether it’s school, office, or everyday wear — it’s the brand that generations trust.'),
    Shoe(
        name: 'Nike',
        imagePath: 'lib/assets/nike.jpg',
        price: '7000',
        description: 'performance meets inspiration'),
    Shoe(
        name: 'Puma',
        imagePath: 'lib/assets/puma.jpg',
        price: '4000',
        description:
            ' fusing sport, fashion, and innovation to power up your style game'),
  ];

  // list of items in cart
  List<Shoe> cartItems=[];
  //get cart

  List<Shoe> getUserCart(){
    return cartItems;
  }

  //get list of items for sale
  List<Shoe> getShoeShop(){
    return shoeShop;
  }

  //add item to cart
  void addItemToCart(Shoe shoe){
    cartItems.add(shoe);
    notifyListeners();
  }

  //remove item from cart

  void removeItemFromCart(Shoe shoe){
    cartItems.remove(shoe);
    notifyListeners();
  }



}
