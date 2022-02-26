import 'package:conditional_builder/conditional_builder.dart';
import 'package:detail_food_screen/Screens/newDetail.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


Widget BuildArticleItem(context) => InkWell(
  onTap: (){Get.to(()=>newDetail());},
  child:   Container(
    padding: EdgeInsets.all(2.0),
   height: 150,
    child: Row(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage('assets/images/hamburger.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "macc",
                style: Theme.of(context).textTheme.bodyText1,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,

              ),
              Text(
                  "mac",
                  style:  Theme.of(context).textTheme.bodyText1
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);

Widget DividerWidget() => Container(
  height: 1.0,
  color: Colors.black26,
);

Widget ArticleBuilder(context) =>  ListView.separated(

    physics: new BouncingScrollPhysics(),

    itemBuilder: (context, index) => BuildArticleItem(context),

    separatorBuilder: (context, index) => DividerWidget(),

    itemCount: 10,

  scrollDirection: Axis.vertical,

    shrinkWrap: true,





);
