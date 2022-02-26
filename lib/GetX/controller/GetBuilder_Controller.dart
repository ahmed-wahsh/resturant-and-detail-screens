/* مسؤول عن تغيير قيمة العداد واظهار قيمته على الشاشه*/
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class GetBuilder_Controller extends GetxController{
  int counter=1;
  int counter2=1;
  int counter3=1;
  int counter4=1;

  void MinusFunc (){
    counter--;
    counter>0?counter--:counter=0  ;
    update();
    ///for change on screen  //*==emit(CounterPlusState(counter)); */
  }
  void PlusFunc (){
    counter++;

    update();
    ///for change on screen  //*= emit(CounterMinusState(counter));  */

  }

  void counte2MinusFunc (){
    counter2--;
    counter2>0?counter2--:counter2=0  ;
    update();
    ///for change on screen  //*==emit(CounterPlusState(counter)); */
  }
  void counte2PlusFunc (){
    counter2++;

    update();
    ///for change on screen  //*= emit(CounterMinusState(counter));  */

  }

  void counte3MinusFunc (){
    counter3--;
    counter3>0?counter3--:counter3=0  ;
    update();
    ///for change on screen  //*==emit(CounterPlusState(counter)); */
  }
  void counte3PlusFunc (){
    counter3++;

    update();
    ///for change on screen  //*= emit(CounterMinusState(counter));  */

  }

  void counte4MinusFunc (){
    counter4--;
    counter4>0?counter4--:counter4=0  ;
    update();
    ///for change on screen  //*==emit(CounterPlusState(counter)); */
  }
  void counte4PlusFunc (){
    counter4++;

    update();
    ///for change on screen  //*= emit(CounterMinusState(counter));  */

  }


}