import 'package:flutter/material.dart';
class Ingridiants extends StatefulWidget{
  @override
  _IngridiantsState createState() => _IngridiantsState();
}

class _IngridiantsState extends State<Ingridiants> {
  @override
  int _value=1;

  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children:[
          Text("choose Ingridiants ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

          SizedBox(height: 5,),
          Row(
            children: [
              Radio(
                fillColor: MaterialStateColor.resolveWith((states) => Colors.yellowAccent[700]as Color),
                value: 1,
                groupValue: _value,
                onChanged: (value){
                  setState((){
                  _value=value as int;
                  });
                },
              ),
              SizedBox(width: 5,),
              Text("Tomato",style: TextStyle(fontSize: 20,),),
            ],
          ),
          Row(
            children: [
              Radio(
                fillColor: MaterialStateColor.resolveWith((states) => Colors.yellowAccent[700]as Color),
                value: 2,
                groupValue: _value,
                onChanged: (value){
                  setState((){
                   _value=value as int;
                  });
                },
              ),
              SizedBox(width: 5,),
              Text("Onion",style: TextStyle(fontSize: 20,),),
            ],
          ),
          Row(
            children: [
              Radio(

                value: 3,
                groupValue: _value,
              fillColor: MaterialStateColor.resolveWith((states) => Colors.yellowAccent[700]as Color),

                onChanged: (value){
                  setState((){
                    _value=value as int;
                  });
                },
              ),
              SizedBox(width: 5,),
              Text("Extra Pickle",style: TextStyle(fontSize: 20,),),
            ],
          ),],),
    );
  }
}