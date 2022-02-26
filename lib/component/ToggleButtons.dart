import 'package:detail_food_screen/GetX/controller/ToggleController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Toggle extends StatelessWidget{
 // List<bool> isSelected = [true, false, false];
  Widget build(BuildContext context) {
    return GetBuilder<Toggle_Controller>(
        init: Toggle_Controller(),
    builder: (controller) => Row(
      children: [
        Obx(()=>ToggleButtons(
          isSelected:Toggle_Controller(). isSelected,
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
           controller.changeToggleButton(newIndex);

            }

        ),
        ), ],
    ),
    );
  }
}
