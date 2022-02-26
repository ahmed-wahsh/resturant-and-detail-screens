import 'package:detail_food_screen/Screens/newDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:detail_food_screen/cubit/states.dart';
import 'package:detail_food_screen/cubit/cubit.dart';


class Counter extends StatelessWidget {
   double ?counterWidth=150.0 as double;
   double ?counterHeight=50.0;
   Color ?backGroudColor=Colors.black12 as Color;
   Color ?ButtonColor=Colors.cyan[800]as Color;
   double ?radius = 15.0 as double;
   double ?TextSize= 25.0 as double;
   double ?IconSize= 25.0 as double;
  Counter({
    @required counterWidth ,
    @required counterHeight,
    @required backGroudColor,
    @required ButtonColor,
    @required radius,
    @required TextSize,
    @required IconSize,


});


 int counterValue = 0;
 int price=0;
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
           price = CounterCubit.get(context).value;


            return Container(
              width: counterWidth as double,
              height: counterHeight as double,
              decoration: BoxDecoration(color: backGroudColor,
                borderRadius: BorderRadius.circular(radius as double ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: Icon(
                    Icons.remove,
                    color: ButtonColor,
                    size: IconSize,

                  ), onPressed: () {
                    CounterCubit.get(context).MinusFunc();
                    CounterCubit.get(context).ValueFunc();

                  },),


                  Text(
                    "${counterValue}",
                    style: TextStyle(fontSize: TextSize, fontWeight: FontWeight.w900),
                  ),


                  IconButton(


                    onPressed: () {
                      CounterCubit.get(context).PlusFunc();
                      CounterCubit.get(context).ValueFunc();

                      //   _newDetailState().value=counterValue*250;


                    },
                    icon: Icon(

                      Icons.add,
                      color: ButtonColor,
                      size: IconSize,

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



