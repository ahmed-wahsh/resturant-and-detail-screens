import 'package:flutter/material.dart';
class Description extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Text(" burger is a food, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon",style: TextStyle(fontSize: 18,),),

      ],


    ),);
  }
}