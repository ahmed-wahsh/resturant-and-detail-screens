import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'Checkout.dart';
import 'Payment.dart';
class AddCart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        centerTitle: true,
        backgroundColor:Colors.white,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios ,color: Colors.black,),onPressed: (){Navigator.pop(context);},
        ),
        title:Text("Add Card", style: TextStyle(color: Colors.black,),),
        actions: [IconButton(icon: Icon(Icons.circle_notifications ,color: Colors.black,size: 35,),onPressed: (){}),],


      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSlideshow(
                width: double.infinity,
                height: 200,
                initialPage: 0,
              indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                autoPlayInterval: 3000,
                isLoop: true,

                children: [
                Image(image: AssetImage("assets/images/BigCreditCard.png"),),
                Image(image: AssetImage("assets/images/BigCreditCard2.png"),),
                Image(image: AssetImage("assets/images/BigCreditCard3.png"),),
              ],),
              SizedBox(height: 20,),
              Text("Card Holder Name".toUpperCase(),style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold,),),
              SizedBox(height: 20,),
              TextFormField(
                  keyboardType:TextInputType.text,
                decoration: InputDecoration(

                border: OutlineInputBorder(),
                  hintText: "ahmed adel"
                ),
              ),
              SizedBox(height: 20,),
              Text("Card number".toUpperCase(),style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold,),),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 80 ),
                    child: TextFormField(


                      keyboardType:TextInputType.number,
                      decoration: InputDecoration(


                          border: OutlineInputBorder(),
                          hintText: "4555"
                        ,hintStyle: TextStyle(color: Colors.black26),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 80),
                    child: TextFormField(


                        keyboardType:TextInputType.number,
                      decoration: InputDecoration(


                          border: OutlineInputBorder(),
                          hintText: "4575"
                        ,hintStyle: TextStyle(color: Colors.black26),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 80),
                    child: TextFormField(


                      keyboardType:TextInputType.number,
                      decoration: InputDecoration(


                          border: OutlineInputBorder(),
                          hintText: "4656"
                        ,hintStyle: TextStyle(color: Colors.black26),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 80),
                    child: TextFormField(


                      keyboardType:TextInputType.number,
                      decoration: InputDecoration(


                          border: OutlineInputBorder(),
                          hintText: "7575"
                        ,hintStyle: TextStyle(color: Colors.black26),
                      ),
                    ),
                  ),



                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                Text("Card number".toUpperCase(),style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold,),),
                  Text("Cvv/cvc".toUpperCase(),style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold,),),


                ],),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 100),
                    child: TextFormField(


                      keyboardType:TextInputType.number,
                      decoration: InputDecoration(


                          border: OutlineInputBorder(),
                          hintText: "4575",

                          hintStyle: TextStyle(color: Colors.black26),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 100),
                    child: TextFormField(


                      keyboardType:TextInputType.number,
                      decoration: InputDecoration(


                          border: OutlineInputBorder(),
                          hintText: "4656"
                        ,hintStyle: TextStyle(color: Colors.black26),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 100),
                    child: TextFormField(


                      keyboardType:TextInputType.number,
                      decoration: InputDecoration(


                          border: OutlineInputBorder(),
                          hintText: "7575"
                          ,hintStyle: TextStyle(color: Colors.black26),
                      ),
                    ),
                  ),



                ],
              ),
                  SizedBox(height: 30,),
                  Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.cyan[800],),
    width: MediaQuery.of(context).size.width,
    child:


    MaterialButton( onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(
    //  builder: (context) =>OrderPage(  mealsCount: 5  ),
    builder: (context) =>Payment(  ),
    ),
    );
    },
      child:  Text("  Add Card ",style: TextStyle(color: Colors.white,fontSize: 25,), ),

    ),),



            ],

          ),
        ),
      ),
    );

  }


}