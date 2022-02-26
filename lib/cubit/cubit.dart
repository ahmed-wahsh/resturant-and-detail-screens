import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:detail_food_screen/cubit/states.dart';


class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitialState());

  int counter=1;
  int value=1;


  static CounterCubit get(context)=>BlocProvider.of(context);  ///for make object from class

  void MinusFunc (){
    counter>0?counter--:counter=0;
    emit(CounterPlusState(counter));   ///for change on screen
  }
  void PlusFunc (){
    counter++;
    emit(CounterMinusState(counter));

  }
  void ValueFunc (){
     value=counter*75;
    emit(PriceValue (value));

  }

  //int getCounterValue(){ return counter;}
}