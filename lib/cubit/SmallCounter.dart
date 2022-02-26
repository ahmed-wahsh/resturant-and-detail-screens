import 'package:detail_food_screen/Screens/newDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:detail_food_screen/cubit/states.dart';
import 'package:detail_food_screen/cubit/cubit.dart';


class SmallCounter extends StatelessWidget {


  int counterValue = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
          listener: (context, state) {
            if (state is CounterPlusState) {
              print("${state.counter}");
            }
            if (state is CounterMinusState) {
              print("${state.counter}");
            }
          },
          builder: (context, state) {
            counterValue = CounterCubit.get(context).counter;


            return Container(
              height: 30,
              width: 110,
              decoration: BoxDecoration(color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(0),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: Icon(
                    Icons.remove,
                    color: Colors.amber,
                    size: 20,

                  ), onPressed: () {
                    CounterCubit.get(context).MinusFunc();

                  },),


                  Text(
                    "${counterValue}",
                    style: TextStyle(fontSize:20, fontWeight: FontWeight.w900),
                  ),


                  IconButton(


                    onPressed: () {
                      CounterCubit.get(context).PlusFunc();

                      //   _newDetailState().value=counterValue*250;


                    },
                    icon: Icon(

                      Icons.add,
                      color: Colors.amber,
                      size: 20,

                    ),
                  ),


                ],
              ),
            );
          }

      ),


    );
  }
  int getCounterValue()
  { return  counterValue;}

}



