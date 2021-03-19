import 'package:flutter/material.dart';
import 'package:food_app/View/widgets.dart';
import 'package:food_app/constants.dart';

class HomeView extends StatefulWidget {
  static String id = 'HomeView';
  @override
  _HomeViewState createState() => _HomeViewState();
}

// ============================ STATE  =========================================
class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kMainColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(08),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {},
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.filter_list, color: Colors.white),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    IconButton(
                      icon: Icon(Icons.menu, color: Colors.white),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Restaurant ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BerkshireSwash-Regular'),
                ),
                TextSpan(
                  text: ' Food',
                  style: TextStyle(
                      fontFamily: 'BerkshireSwash-Regular', fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: _screenHeight * .05),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
              ),
            ),
            height: _screenHeight - 120,
            child: Padding(
              padding: const EdgeInsets.only(top: 18, left: 08),
              child: ListView(
                padding: EdgeInsets.only(left: 08, right: 08),
                primary: false,
                children: [
                  BuildFoodItem(
                    foodName: 'Pizza',
                    foodDetails: '50.00 SR',
                    imagePath: 'assets/images/pizza.jpg',
                  ),
                  BuildFoodItem(
                    foodName: 'Pastry',
                    foodDetails: '150.00 SR',
                    imagePath: 'assets/images/basrty.jpeg',
                  ),
                  BuildFoodItem(
                    foodName: 'Ham',
                    foodDetails: '75.00 SR',
                    imagePath: 'assets/images/ham.jpg',
                  ),
                  BuildFoodItem(
                    foodName: 'Vegitable',
                    foodDetails: '80.00 SR',
                    imagePath: 'assets/images/vegt.jpg',
                  ),
                  BuildFoodItem(
                    foodName: 'Pizza',
                    foodDetails: '50.00 SR',
                    imagePath: 'assets/images/pizza.jpg',
                  ),
                  BuildFoodItem(
                    foodName: 'Pastry',
                    foodDetails: '150.00 SR',
                    imagePath: 'assets/images/basrty.jpeg',
                  ),
                  BuildFoodItem(
                    foodName: 'Ham',
                    foodDetails: '75.00 SR',
                    imagePath: 'assets/images/ham.jpg',
                  ),
                  BuildFoodItem(
                    foodName: 'Vegitable',
                    foodDetails: '80.00 SR',
                    imagePath: 'assets/images/vegt.jpg',
                  ),
                  BuildFoodItem(
                    foodName: 'Pizza',
                    foodDetails: 'Hot fresh, delicious',
                    imagePath: 'assets/images/pizza.jpg',
                  ),
                  BuildFoodItem(
                    foodName: 'Pastry',
                    foodDetails: 'Hot fresh, delicious',
                    imagePath: 'assets/images/basrty.jpeg',
                  ),
                  BuildFoodItem(
                    foodName: 'Ham',
                    foodDetails: 'Hot fresh, delicious',
                    imagePath: 'assets/images/ham.jpg',
                  ),
                  BuildFoodItem(
                    foodName: 'Vegitable',
                    foodDetails: 'Hot fresh, delicious',
                    imagePath: 'assets/images/vegt.jpg',
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
