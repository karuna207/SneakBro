import 'package:flutter/material.dart';
import 'package:sneakbro/components/shoe_tile.dart';
import 'package:sneakbro/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  Shoe shoe = Shoe(
                    name: "NIKE Air Max",
                    imagePath: "lib/assets/nike.jpg",
                    price: "₹3000",
                    description: "Comfortable and stylish Nike sneakers.",
                  );
                  return Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ShoeTile(shoe: shoe),
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
  }
}
