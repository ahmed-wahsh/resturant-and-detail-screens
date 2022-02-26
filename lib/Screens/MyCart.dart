import 'dart:developer';

//import 'package:detail_food_screen/GetX/view/SmallCounter2.dart';
import 'package:detail_food_screen/GetX/controller/GetBuilder_Controller.dart';
import 'package:detail_food_screen/GetX/view/SmallCounter2.dart';
import 'package:detail_food_screen/GetX/view/SmallCounter3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
//import 'package:detail_food_screen/cubit/Counter.dart';

import 'Checkout.dart';
import '../cubit/SmallCounter.dart';

class MyCart extends StatelessWidget {

  GetBuilder_Controller controller =
      Get.put(GetBuilder_Controller(), permanent: true);
  int discount = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "My Cart",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.circle_notifications,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  // color: Colors.yellowAccent,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/b.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Crispy Burger",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$30.00",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                          ),
                          //smallcounter1,
                          SmallCounter2(),

                          // Counter(radius:0.0 ,backGroudColor:Colors.blueGrey[50] ,counterHeight:10.0 ,counterWidth:110.0 ,TextSize: 20.0,IconSize: 20.0,),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  // color: Colors.yellowAccent,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bb.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chicken Burger",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$40.00",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                          ),
                          //smallcounter2,
                          SmallCounter3(),

                          //  Counter(radius:0.0 ,backGroudColor:Colors.blueGrey[50] ,counterHeight:30.0 ,counterWidth:110.0 ,TextSize: 20.0,IconSize: 20.0,),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            divider(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Item Total",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                GetBuilder<GetBuilder_Controller>(
                  init: GetBuilder_Controller(),
                  builder: (controller) => Text(
                    "${(controller.counter2) * 30 + (controller.counter3) * 40}\$ ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "${discount}\$",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.cyan[800]),
                ),
                Text("0.0\$",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.cyan[800])),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                GetBuilder<GetBuilder_Controller>(
                  init: GetBuilder_Controller(),
                  builder: (controller) => Text(
                      "${(controller.counter2) * 30 + (controller.counter3) * 40 - discount}\$ ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  //color: Colors.yellowAccent,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/map.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deliver to: home ",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Change",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.amber,
                              ),
                            )),
                        // Row
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          "13A haviner Street-new York ",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyan[800],
              ),
              width: MediaQuery.of(context).size.width,
              child: MaterialButton(
                /////////////////////////////////********* go to check out screen *******////////////////////////////////////////
                onPressed: () {
                  Get.to(() => Checkout());

                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "  Checkout ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    GetBuilder<GetBuilder_Controller>(
                      init: GetBuilder_Controller(),
                      builder: (controller) => Text(
                        "${(controller.counter2) * 30 + (controller.counter3) * 40 - discount}\$ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
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
