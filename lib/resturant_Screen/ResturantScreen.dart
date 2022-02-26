

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../Screens/newDetail.dart';
import 'ToggleScreen/Burger.dart';
import 'ToggleScreen/Chickens.dart';
import 'ToggleScreen/drinks.dart';
import 'componnent/componnent.dart';



class ResturantPage extends StatefulWidget{
  @override
  _ResturantPageState createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage> {
  int CurrentIndex = 0;

  int rate = 4;

  int num = 1;

  List<bool> isSelected = [true, false, false];

  bool love = true;
  List<Widget> containers = [
    Burger(),
    Chickens(),
    drinks(),
  ];

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
                          image: AssetImage('assets/images/Mac-Resturant.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),


            Positioned(
              top: 290,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [




                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Macdonald",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 30),
                        ),


                        IconButton(
                          icon: Icon(
                            Icons.turned_in_sharp ,
                            color: (love == true)
                                ? Colors.amber
                                : Colors.black26,
                            size: 40,
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
                      ],
                    ),



                    SizedBox(height: 5),
                    Row(
                      children: [

                        Text(
                          "\$\$ , \.Burger  \. American Food   \.Deshi Food",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.orangeAccent),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
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

                    SizedBox(height: 5),

                    Row(
                      children: [

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

                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,

                            color: Colors.amber[100],

                            child:
                            Text(" Take Away",style: TextStyle(color: Colors.amber,fontSize:15,fontWeight: FontWeight.bold),),


                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 5),
                    DividerWidget(),

                    ////////////////////////////////////////////////////////togle////////////////////////////////////

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.amber[100],
                      ),

                      child:
                      Row(
                        children: [
                          ToggleButtons(
                            isSelected: isSelected,
                            selectedColor: Colors.white,
                            color: Colors.black,
                            fillColor: Colors.amber[400],
                            renderBorder: false,

                            //splashColor: Colors.red,
                            highlightColor: Colors.orange,
                            children: <Widget>[
                              Container(
                                  width: 120,
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  child: Center(
                                      child: Text('Burger ',
                                          style: TextStyle(fontSize: 18)))),
                              Container(
                                  width: 110,
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  child: Center(
                                      child: Text('Checkens',
                                          style: TextStyle(fontSize: 18)))),
                              Container(
                                  width: 110,
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  child: Center(
                                      child: Text('Drinkes',
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

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 270.0,
                          // color: Colors.black26,
                          child: containers[CurrentIndex],
                        ),
                      ],
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

