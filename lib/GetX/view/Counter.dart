import 'package:detail_food_screen/GetX/controller/GetBuilder_Controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
class Counter extends StatelessWidget{
  double counterWidth=150.0 as double;
  double counterHeight=50.0;
  Color backGroudColor=Colors.black12 as Color;
  Color ButtonColor=Colors.cyan[800]as Color;
  double radius = 15.0 as double;
  double TextSize= 25.0 as double;
  double IconSize= 25.0 as double;
  Counter({
    @required counterWidth ,
    @required counterHeight,
    @required backGroudColor,
    @required ButtonColor,
    @required radius,
    @required TextSize,
    @required IconSize,


  });
  Widget build(BuildContext context) {
    return Container(
          width: counterWidth as double,
          height: counterHeight as double,
          decoration: BoxDecoration(color: backGroudColor,
            borderRadius: BorderRadius.circular(radius as double ),
          ),

          child:GetBuilder<GetBuilder_Controller>(
            init: GetBuilder_Controller(),
            builder: (controller) =>
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(
                      Icons.remove,
                      color: ButtonColor,
                      size: IconSize,

                    ), onPressed: () {
                      controller.MinusFunc();

                    },),


                    Text(
                      "${controller.counter}",
                      style: TextStyle(fontSize: TextSize, fontWeight: FontWeight.w900),
                    ),


                    IconButton(


                      onPressed: () {
                        controller.PlusFunc();


                      },
                      icon: Icon(

                        Icons.add,
                        color: ButtonColor,
                        size: IconSize,

                      ),
                    ),


                  ],
                ),
          ),
      );

  }
}