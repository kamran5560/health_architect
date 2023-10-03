import 'package:flutter/material.dart';

import 'package:health_architect/res/colors/app_color.dart';
import '../../Constant/Constant.dart';
import '../../res/assets/image_assets.dart';
import '../SignUp and SignIn Screen/SignUp.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Welcome.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 42, bottom: 150),
              child: Image.asset(
                ImageAssets.Logo,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.only(top: 150, bottom: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Make Yourself\nHealthy and Fit",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColor.whiteColor),
                  ),
                ],
              ),
            ),
            Text(
              "Plan your workout schedule easily",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.whiteColor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 52),
              child: Elevated_Button("Get Started", () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SignUp()));
              }, 180, 22),
            )
          ],
        ),
      ),
    );
  }
}
