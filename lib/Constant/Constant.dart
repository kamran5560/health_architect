import 'package:flutter/material.dart';

import '../../../res/colors/app_color.dart';


Widget Elevated_Button(
    String B_text, Function() onpress, double value, double font_size) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.PrimaryColor,),
    width: value,

    child: TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        padding: EdgeInsets.all(10.0),
        textStyle: TextStyle(fontSize: font_size, fontWeight: FontWeight.w500),
      ),
      onPressed: onpress,
      child: Text(
        '${B_text}',
        style: TextStyle(
            fontSize: font_size,
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor),
      ),
    ),
  );
}