import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:sneakbro/components/cart_item.dart";
import "package:sneakbro/models/cart.dart";
import "package:sneakbro/models/shoe.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return Column(
        children: [
          Text(
            'MY CART',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            )),
            const SizedBox(height: 10),
            Expanded(
              child:ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context,index){
                      Shoe IndividualShoe=value.getUserCart()[index];
                      return CartItem(
                        shoe:IndividualShoe,
                      );
              })
            ),

        ],
      );
    });
  }
}
