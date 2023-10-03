import 'package:flutter/material.dart';
import 'package:health_architect/res/assets/image_assets.dart';

import '../Chosed Level/Chosed Level.dart';
import '../../Constant/Constant.dart';
import '../../res/colors/app_color.dart';
import '../Your Name Screen/Your_Name_Widget.dart';

class screen_goal extends StatefulWidget {
  const screen_goal({Key? key}) : super(key: key);

  @override
  State<screen_goal> createState() => _screen_goalState();
}

class _screen_goalState extends State<screen_goal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            children: [
              Heading("What’s your goal?"),
              ImageCard(ImageAssets.girl_2page),
              TextImage("Lose Weight", "",ImageAssets.bag,AppColor.gray4,AppColor.whiteColor),
              TextImage("Get Toned", "",ImageAssets.fitnes,AppColor.whiteColor,AppColor.BackgroundColor),
              TextImage("Non-Build Muscle", "",ImageAssets.shoulder,AppColor.gray4,AppColor.whiteColor),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Elevated_Button("Continue", () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => fitness_level()));
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