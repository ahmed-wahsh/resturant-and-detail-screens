import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Toggle_Controller extends GetxController{
  int CurrentIndex=0;
  List<bool> isSelected = [true, false, false];
  void changeToggleButton (int newIndex){
    CurrentIndex = newIndex;
    print(CurrentIndex);

    for (int index = 0; index < isSelected.length; index++) {
      if (index == newIndex) {
        isSelected[index] = true;
      } else {
        isSelected[index] = false;
      }
    }
    update();



  }
}
