import "package:flutter/material.dart";
import "package:sneakbro/components/my_bottom_navbar.dart";
import "package:sneakbro/pages/shop_page.dart";

import "cart_page.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex=0;

  final pages=[
    ShopPage(),
    CartPage(),
  ];

  void navigateBottomBar(int index){
    print(index);
    setState(() {
      _selectedIndex=index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (int index){
          navigateBottomBar(index);
        },

      ),
    );
  }
}
