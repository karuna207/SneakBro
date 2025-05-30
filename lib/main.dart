import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:sneakbro/models/cart.dart";
import "package:sneakbro/pages/intro_page.dart";

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>Cart(),
      builder:(context,child){
        return MaterialApp(
          home:IntroPage(),
        );
      }
    );

  }
}


