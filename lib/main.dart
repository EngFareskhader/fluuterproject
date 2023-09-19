import 'package:assa/screens/Productscreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Prodect_Screen(),
    );
  }
}
