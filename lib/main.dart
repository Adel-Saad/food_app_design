import 'package:flutter/material.dart';
import 'package:food_app/View/foodDetails.dart';
import 'package:food_app/View/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
      routes: {
        HomeView.id: (context) => HomeView(),
        FoodDetails.id: (context) => FoodDetails(),
      },
    );
  }
}
