import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:sneakbro/models/cart.dart";
import "package:sneakbro/models/shoe.dart";

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({super.key,required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);


  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius:BorderRadius.circular(10),
      ),
      child: ListTile(
        leading:Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.description),
        trailing: IconButton(
          icon:Icon(Icons.delete),
          onPressed:removeItemFromCart,
        ),
      ),
    );
  }
}
