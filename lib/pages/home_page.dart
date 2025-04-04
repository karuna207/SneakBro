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
  int _selectedIndex = 0;

  final pages = [
    ShopPage(),
    CartPage(),
  ];

  void navigateBottomBar(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
          backgroundColor: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('lib/assets/sneaker.jpg'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 18.0),
                  child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title: Text(
                        'HOME',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 18.0),
                  child: ListTile(
                      leading: Icon(Icons.info, color: Colors.white),
                      title: Text(
                        'ABOUT',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
              ]),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, bottom: 18.0),
                    child: ListTile(
                        leading: Icon(Icons.logout, color: Colors.white),
                        title: Text(
                          'LOGOUT',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          )),
      body: pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (int index) {
          navigateBottomBar(index);
        },
      ),
    );
  }
}
