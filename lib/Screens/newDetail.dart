import 'dart:ffi';
import 'package:detail_food_screen/GetX/controller/GetBuilder_Controller.dart';
import 'package:detail_food_screen/GetX/controller/ToggleController.dart';
import 'package:detail_food_screen/component/ToggleButtons.dart';
import 'package:detail_food_screen/component/ToggleButtons.dart';
import 'package:detail_food_screen/cubit/SmallCounter.dart';
import 'package:get/get.dart';
import 'package:bloc/bloc.dart';
import 'package:detail_food_screen/GetX/view/Counter.dart';

import 'package:flutter/material.dart';

import '../ToggleScreen/Description.dart';
import '../ToggleScreen/Ingridiants.dart';
import 'MyCart.dart';

import '../ToggleScreen/Type.dart';


class newDetail extends StatefulWidget {
  @override
  _newDetailState createState() => _newDetailState();
}

class _newDetailState extends State<newDetail> {
  int CurrentIndex = 0;
  int rate = 4;
  int num = 1;


  List<bool> isSelected = [true, false, false];

  bool love = true;
  List<Widget> containers = [
    Description(),
    Ingridiants(),
    Type(),
  ];
  //int mealsCount =Counter().getCounterValue() ;
  final GetBuilder_Controller controller = Get.put(GetBuilder_Controller(),permanent:true);
  Widget build(BuildContext context) {
    //value= mealsCount*250;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Positioned(
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/hamburger.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    child: Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(
                                Icons.star,
                                color: (index < rate)
                                    ? Colors.cyan[800]
                                    : Colors.white,
                              );
                            },
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),
                         Text("($rate)",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 20),),
                        SizedBox(
                          width: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: GestureDetector(
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.favorite,
                                      color: (love == true)
                                          ? Colors.red
                                          : Colors.black26,
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (love) {
                                          love = false;
                                          rate--;
                                        } else {
                                          love = true;
                                          rate++;
                                        }
                                      });
                                    },
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 60,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Positioned(
              top: 330,
              child: Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hamburger",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 30),
                        ),
                        Text("75 \$",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Colors.amber)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "MAC , Shibin Elkom",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.orangeAccent),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "4.9 (151)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.blue,
                                ),
                                Text(" 30 min"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.delivery_dining,
                                  color: Colors.green,
                                ),
                                Text(" Free Dilivery"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 5),
                    divider(),

                    ////////////////////////////////////////////////////////togle////////////////////////////////////

                    Container(
                      child:
                      Row(
                        children: [
                          ToggleButtons(
                            isSelected: isSelected,
                            selectedColor: Colors.white,
                            color: Colors.black,
                            fillColor: Colors.cyan[800],
                            renderBorder: false,

                            //splashColor: Colors.red,
                            highlightColor: Colors.orange,
                            children: <Widget>[
                              Container(
                                  width: 120,
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  child: Center(
                                      child: Text('Description ',
                                          style: TextStyle(fontSize: 18)))),
                              Container(
                                  width: 110,
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  child: Center(
                                      child: Text('Ingridiants',
                                          style: TextStyle(fontSize: 18)))),
                              Container(
                                  width: 110,
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  child: Center(
                                      child: Text('Type',
                                          style: TextStyle(fontSize: 18)))),
                            ],
                            onPressed: (int newIndex) {
                              setState(() {
                                CurrentIndex = newIndex;
                                for (int index = 0;
                                index < isSelected.length;
                                index++) {
                                  if (index == newIndex) {
                                    isSelected[index] = true;
                                  } else {
                                    isSelected[index] = false;
                                  }
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    divider(),

                    Container(
                      width: double.infinity,
                      height: 150.0,
                      // color: Colors.black26,
                      child: containers[CurrentIndex],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Counter(

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan[800],
                      ),
                      width: MediaQuery.of(context).size.width - 200,
                      child: MaterialButton(
                        onPressed: () {
                          ///////////////////////////******** go to my cart page ********////////////////////////////
                          Get.to(MyCart());

                        },
                        child:GetBuilder<GetBuilder_Controller>(
                          init:GetBuilder_Controller(),
                          builder:(controller)=>
                          Text(
                          "Add To Cart   ${(controller.counter)*75}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container divider() {
  return Container(
    height: 1,
    //margin: EdgeInsets.symmetric(vertical: 15,),
    color: Colors.black12,
  );
}
