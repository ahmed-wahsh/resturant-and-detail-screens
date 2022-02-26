import 'dart:developer';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:detail_food_screen/GetX/controller/GetBuilder_Controller.dart';
import 'package:detail_food_screen/GetX/view/SmallCounter4.dart';
import 'package:detail_food_screen/Screens/Payment.dart';
import 'package:flutter/material.dart';
import 'package:detail_food_screen/cubit/Counter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get.dart';

import 'MyCart.dart';
//import '../cubit/SmallCounter2.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool paypal = false;
  bool credit = false;
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
          "Checkout",
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
                  //color: Colors.yellowAccent,
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
                          SmallCounter4(),

                          // Counter(radius:0.0 ,backGroudColor:Colors.blueGrey[50] ,counterHeight:30.0 ,counterWidth:110.0 ,TextSize: 20.0,IconSize: 20.0,),
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
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(()=>Payment());
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Payment(),
                        //   ),
                        // );
                      },
                      child: Text(
                        "Add New",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blueGrey[50],
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        paypal = true;
                        credit = false;
                      });
                    },
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/paypal.png"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PayPal ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Faster and Safer Way To Send Money ",
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Icon(
                          Icons.check_circle,
                          color: (paypal == true) ? Colors.amber : Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blueGrey[50],
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        paypal = false;
                        credit = true;
                      });
                    },
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/card.png"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Credit Card ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Pay With Master Card Visa ",
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 115,
                        ),
                        Icon(
                          Icons.check_circle,
                          color: (credit == true) ? Colors.amber : Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
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
                    "${(controller.counter4) * 30}\$ ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "10.00\$",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 15,
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
              height: 15,
            ),
            divider(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                GetBuilder<GetBuilder_Controller>(
                  init: GetBuilder_Controller(),
                  builder: (controller) => Text(
                      "${(controller.counter4) * 30 - discount}\$ ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            divider(),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyan[800],
              ),
              width: MediaQuery.of(context).size.width,
              child: MaterialButton(
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    animType: AnimType.SCALE,
                    dialogType: DialogType.SUCCES,
                    title: 'you placed the order successfuly',
                    width: 500,
                    body: Center(
                      child: Text(
                        '   you placed the order successfuly,you will get order within 25 min ,thanks for using our services, enjoy your food',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 20),
                      ),
                    ),
                    desc: 'message for user',
                    aligment: Alignment.center,
                    btnOkOnPress: () {},
                  )..show();
                },
                child: Text(
                  "  Confirm Order ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
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
