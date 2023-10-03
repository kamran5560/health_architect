import 'package:flutter/material.dart';

import 'package:health_architect/res/assets/image_assets.dart';
import 'package:health_architect/res/colors/app_color.dart';
import '../../Constant/Constant.dart';
import '../Your Goal/Your Goal.dart';
import 'Your_Name_Widget.dart';

class screen_name extends StatefulWidget {
  const screen_name({Key? key}) : super(key: key);

  @override
  State<screen_name> createState() => _screen_nameState();
}

class _screen_nameState extends State<screen_name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(16),
          child: Column(
            children: [
              Heading("What’s your name?"),
              ImageCard(ImageAssets.girl),
              TextImage("Male", "",ImageAssets.male,AppColor.gray4,AppColor.whiteColor),
              TextImage("Female", "",ImageAssets.girl_2,AppColor.whiteColor,AppColor.BackgroundColor),
              TextImage("Non-binary", "",ImageAssets.chilhood,AppColor.gray4,AppColor.whiteColor),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Elevated_Button("Continue", () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => screen_goal()));
                    }, 150, 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


