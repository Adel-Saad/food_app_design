import 'package:flutter/material.dart';
import 'package:food_app/Models/food_model.dart';
import 'package:food_app/View/widgets.dart';
import 'package:food_app/constants.dart';

class FoodDetails extends StatefulWidget {
// props ...
  static String id = 'Fooddetails';
  final heroTag;
  final foodName;
  final foodDetails;
// constr ...
  FoodDetails({this.heroTag, this.foodDetails, this.foodName});
  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

// ============================== STATE ========================================
class _FoodDetailsState extends State<FoodDetails> {
// props ...
  int _counter = 0;
// Main Build ...
  @override
  Widget build(BuildContext context) {
    BuildFoodItem foodItem = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        title: Text('Details'),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_sharp),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height - 130,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 20,
                right: 85,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(widget.heroTag),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 250,
                right: 25,
                left: 25,
                child: Column(
                  children: [
                    Text(
                      widget.foodName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.foodDetails),
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: kMainColor.withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    _counter--;
                                  });
                                },
                              ),
                              Text('0'),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    _counter++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
