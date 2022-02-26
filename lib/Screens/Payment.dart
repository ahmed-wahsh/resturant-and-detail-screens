import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:detail_food_screen/cubit/Counter.dart';

import 'AddCart.dart';
import 'Checkout.dart';
import '../cubit/SmallCounter.dart';

class Payment extends StatefulWidget{
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  bool credit=false;

  bool paypal=false;

  bool bitcoin=false;
  bool cash=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
        centerTitle: true,
        backgroundColor:Colors.white,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios ,color: Colors.black,),onPressed: (){Navigator.pop(context);},
    ),
    title:Text("Add A payment Method", style: TextStyle(color: Colors.black,),),



    ),
    body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          SizedBox(height: 20,),
          Text("Choose payment method To add", style: TextStyle(color: Colors.black38,fontSize: 18),),
          SizedBox(height: 40,),
          Container(

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey[50],),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child:


            MaterialButton( onPressed: () {
              setState(() {
                paypal=true;
                credit=false;
                bitcoin=false;
                cash=false;
              });



            },

              child: Row(

                children: [

                  Image( image: AssetImage("assets/images/paypal.png"),),
                  SizedBox(width: 5,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PayPal ",style: TextStyle(color: Colors.black,fontSize: 15,), ),
                      SizedBox(height: 2,),
                      Text("Faster and Safer Way To Send Money ",style: TextStyle(color: Colors.black26,fontSize: 12,), ),
                    ],
                  ),

                  SizedBox(width:55,),
                  Icon(Icons.check_circle,color:  (paypal==true) ? Colors.amber : Colors.white,size: 30,),



                ],
              ),
            ),),
          SizedBox(height: 30,),
          Container(

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey[50],),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child:


            MaterialButton( onPressed: () {
              setState(() {
                paypal=false;
                credit=true;
                bitcoin=false;
                cash=false;
              });



            },

              child: Row(
                children: [

                  Image( image: AssetImage("assets/images/card.png"),),
                  SizedBox(width: 5,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Credit Card ",style: TextStyle(color: Colors.black,fontSize: 15,), ),
                      SizedBox(height: 2,),
                      Text("Pay With Master Card Visa ",style: TextStyle(color: Colors.black26,fontSize: 12,), ),
                    ],

                  ),

                  SizedBox(width:115,),
                  Icon(Icons.check_circle ,color:  (credit==true) ? Colors.amber : Colors.white,size: 30,),



                ],
              ),
            ),),
          SizedBox(height: 30,),
          Container(

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey[50],),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child:


            MaterialButton( onPressed: () {
              setState(() {
                paypal=false;
                credit=false;
                bitcoin=true;
                cash=false;
              });


            },

              child: Row(
                children: [

                  Image( image: AssetImage("assets/images/Bitcoin.png"),),
                  SizedBox(width: 5,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bitcoin Wallet ",style: TextStyle(color: Colors.black,fontSize: 15,), ),
                      SizedBox(height: 2,),
                      Text("Send the amount Of bitcoin in our wallet  ",style: TextStyle(color: Colors.black26,fontSize: 12,), ),
                    ],
                  ),


                  SizedBox(width:40,),
                  Icon(Icons.check_circle,color:  (bitcoin==true) ? Colors.amber : Colors.white,size: 30,),

                ],
              ),
            ),),
          SizedBox(height: 30,),
          Container(

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey[50],),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child:


            MaterialButton( onPressed: () {
              setState(() {
                paypal=false;
                credit=false;
                bitcoin=false;
                cash=true;
              });


            },

              child: Row(
                children: [

                  Image( image: AssetImage("assets/images/cash.png"),),
                  SizedBox(width: 5,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("cash ",style: TextStyle(color: Colors.black,fontSize: 15,), ),
                      SizedBox(height: 2,),
                      Text("Pay With cash money ",style: TextStyle(color: Colors.black26,fontSize: 12,), ),
                    ],

                  ),

                  SizedBox(width:140,),
                  Icon(Icons.check_circle ,color:  (cash==true) ? Colors.amber : Colors.white,size: 30,),



                ],
              ),

            ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){    Navigator.push(context,
                MaterialPageRoute(
                  //  builder: (context) =>OrderPage(  mealsCount: 5  ),
                  builder: (context) =>AddCart(  ),
                ), );},

                child:Text("Add Credit Card"),),
            ],
          ),
          SizedBox(height: 100,),
          Container(

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.cyan[800],),
            width: MediaQuery.of(context).size.width,
            child:


            MaterialButton( onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(

                  builder: (context) =>Checkout(  ),
                ),
              );
            },



              child: Text(" Next ",style: TextStyle(color: Colors.white,fontSize: 25,), ),


            ),),


        ],
      ),

    ) ,


    );}}
