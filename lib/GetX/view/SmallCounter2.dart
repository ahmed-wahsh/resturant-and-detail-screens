import 'package:detail_food_screen/GetX/controller/GetBuilder_Controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
class SmallCounter2 extends StatelessWidget{



  Widget build(BuildContext context) {
    return  Container(
        height: 30,
        width: 110,
        decoration: BoxDecoration(color: Colors.blueGrey[50],
          borderRadius: BorderRadius.circular(0),
        ),

        child: GetBuilder<GetBuilder_Controller>(
          init: GetBuilder_Controller(),
      builder: (controller) =>Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(icon: Icon(
              Icons.remove,
              color: Colors.amber,
              size: 20,

            ), onPressed: () {
              controller.counte2MinusFunc();
            },),


            Text(
              "${controller.counter2}",
              style: TextStyle(fontSize:20, fontWeight: FontWeight.w900),
            ),


            IconButton(


              onPressed: () {
                controller.counte2PlusFunc();

              },
              icon: Icon(

                Icons.add,
                color: Colors.amber,
                size: 20,

              ),
            ),


          ],
        ),
      )

    );
  }
}