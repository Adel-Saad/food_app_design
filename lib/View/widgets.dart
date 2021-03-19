import 'package:flutter/material.dart';
import 'package:food_app/Models/food_model.dart';
import 'package:food_app/View/foodDetails.dart';
import 'package:food_app/constants.dart';

class BuildFoodItem extends StatelessWidget {
// props...
  String imagePath;
  String foodName;
  String foodDetails;

// consrt ...
  BuildFoodItem({this.foodDetails, this.foodName, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 08, top: 08),
      child: Container(
        height: 85,
        child: Card(
          shadowColor: kMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
            ),
          ),
          elevation: 08,
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return FoodDetails(
                    foodDetails: foodDetails,
                    foodName: foodName,
                    heroTag: imagePath,
                  );
                },
              ));
            },
            leading: Hero(
                tag: imagePath,
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imagePath),
                    ),
                  ),
                )),
            title: Text(foodName),
            subtitle: Text(foodDetails),
            trailing: Icon(Icons.add_rounded),
          ),
        ),
      ),
    );
  }
}
