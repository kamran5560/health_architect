import 'package:flutter/material.dart';

import '../res/colors/app_color.dart';


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
        // padding: EdgeInsets.symmetric(vertical: 2.0),
        color: Colors.white,
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
                borderRadius: BorderRadius.circular(0)),
          ),
        ),
      ),
    ],
  );
}