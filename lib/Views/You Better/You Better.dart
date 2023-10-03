import 'package:flutter/material.dart';
import 'package:health_architect/res/assets/image_assets.dart';

import '../../Constant/Constant.dart';
import '../../res/colors/app_color.dart';
import '../Your Name Screen/Your_Name_Widget.dart';

class screen_better extends StatefulWidget {
  const screen_better({Key? key}) : super(key: key);

  @override
  State<screen_better> createState() => _screen_betterState();
}

class _screen_betterState extends State<screen_better> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Heading("Let us know you better"),
              ImageCard(ImageAssets.girle4),
              TextImage("Date of birth", "1999-01-01",ImageAssets.pencil,AppColor.gray4,AppColor.whiteColor),
              TextImage("Current Weight", "124.34 lbs",ImageAssets.pencil,AppColor.gray4,AppColor.whiteColor),
              TextImage("Target Weight", "124.34 lbs",ImageAssets.pencil,AppColor.gray4,AppColor.whiteColor),
              TextImage("Height", "5’5’",ImageAssets.pencil,AppColor.gray4,AppColor.whiteColor),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Elevated_Button("Continue", () {}, 150, 16),
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