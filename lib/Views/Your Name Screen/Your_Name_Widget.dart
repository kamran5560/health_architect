import 'package:flutter/material.dart';

import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';

Widget Heading (String text){
  return      Padding(
    padding: EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${text}",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xff656467)),
        )
      ],
    ),
  );
}

Widget ImageCard(String image){
  return    Padding(
    padding: EdgeInsets.symmetric(vertical: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,scale: .88,
        ),
      ],
    ),
  );
}

Widget TextImage ( String text1,String text2, String Image_link,Color TColor,Color BColor){
  return  Container(
    decoration: BoxDecoration(
        border: Border.all(color: AppColor.gray3),borderRadius: BorderRadius.circular(8),
        color: BColor
    ),
    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 6),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("${text1}",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: TColor),),

        Row(
          children: [
            Text("${text2}",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.gray4),),
            SizedBox(width: 8),

            Image.asset(
              Image_link,
            ),
          ],
        )
      ],
    ),
  );
}

Widget LevelCard (){
  return   Padding(
    padding:  EdgeInsets.only(top:24),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          ImageAssets.L1,
        ),
        Image.asset(
          ImageAssets.L2,
        ),
        Image.asset(
          ImageAssets.L3,
        ),
        Image.asset(
          ImageAssets.L4,
        ),
        Image.asset(
          ImageAssets.L5,
        ),
        Image.asset(
          ImageAssets.L6,
        ),
      ],
    ),
  );
}