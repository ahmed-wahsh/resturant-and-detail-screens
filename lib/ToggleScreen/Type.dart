import 'package:flutter/material.dart';
class Type extends StatefulWidget{
  @override
  _TypeState createState() => _TypeState();
}

class _TypeState extends State<Type> {
  @override

  int _value=1;

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children:[
          Text("choose Of Top Burger ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

            SizedBox(height: 5,),
                  Row(
                  children: [
            Radio(
                value: 1,
                groupValue: _value,
              fillColor: MaterialStateColor.resolveWith((states) => Colors.yellowAccent[700]as Color),
                onChanged: (value){
                  setState((){
                    _value=value  as int;
                  });
                },
            ),
            SizedBox(width: 5,),
            Text("Extra Savory Souce",style: TextStyle(fontSize: 20,),),
                  ],
                ),
                Row(
                  children: [
            Radio(
                value: 2,
                groupValue: _value,
              fillColor: MaterialStateColor.resolveWith((states) => Colors.yellowAccent[700]as Color),
                onChanged: (value){
                  setState((){
                    _value=value as int;
                  });
                },
            ),
            SizedBox(width: 5,),
            Text("Extra Chesses",style: TextStyle(fontSize: 20,),),
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
            Text("Extra Tomatos",style: TextStyle(fontSize: 20,),),
                  ],
                ),],),
    );
  }
}