import 'package:flutter/material.dart';

import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';
import 'SignIn.dart';

Widget LogoImage (){
  return Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImageAssets.Logo,
        ),
      ],
    ),
  );
}

Widget IconRow (){
  return
    Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign up for continue explore!",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff656467)),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff366773),
              ),
              child: Icon(
                Icons.g_mobiledata,
                color: AppColor.whiteColor,
                size: 35,
              ),
            ),
            SizedBox(width: 10),
            Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff366773),
                ),
                child: Center(
                  child: Text(
                    "f",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: AppColor.whiteColor),
                  ),
                )),
            SizedBox(width: 10),
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff366773),
              ),
              child: Icon(
                Icons.apple,
                color: AppColor.whiteColor,
                size: 35,
              ),
            ),
          ],
        )
      ],
    )
 ;
}

Widget TextField_Design(
    String text, String hint, TextEditingController controller) {
  return  Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "${text}",
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.gray4),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          controller: controller,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            hintText: "${hint}",
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColor.gray4),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(08)),
          ),
        ),
      ),
    ],
  );
}

Widget BotumText (BuildContext context, String text1, String text2){
  return   Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("${text1}",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xff656467))),
      SizedBox(width: 2),
      GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    Sign_In()));
          },
          child: Text("${text2}",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColor.PrimaryColor))),
    ],
  );
}

Widget ForgetText(){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.black)),
          ),
          SizedBox(width: 8),
          Text(
            "Keep me signed in",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColor.LiteGray),
          )
        ],
      ),
      Text(
        "Forgot password?",
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: AppColor.LiteGray),
      )
    ],
  );
}