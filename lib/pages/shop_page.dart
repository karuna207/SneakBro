import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakbro/components/shoe_tile.dart';
import 'package:sneakbro/models/cart.dart';
import 'package:sneakbro/models/shoe.dart';

class ShopPage extends StatefulWidget {

  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe); 
    
    showDialog(context: context, builder: (context){
      return AlertDialog(
          title: Text('Successfully Added'),
          content: Text('Check your Cart'),
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child){
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Search", style: TextStyle(fontSize: 20)),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ),

              // Quote
              Container(
                margin: const EdgeInsets.all(16),
                child: const Text(
                  "Everyone flies, some fly longer than others",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Hot Picks Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "HOT PICKS 🔥",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Shoe List
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.getShoeShop().length,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoeShop()[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: ShoeTile(shoe: shoe,onTap:(){
                        addShoeToCart(shoe);
                      },),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:18.0,right:18,top:28),
                child: Divider(
                    color:Colors.white
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
