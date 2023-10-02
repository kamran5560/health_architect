import 'package:flutter/material.dart';

import '../Constant/Constant.dart';
import '../Your Name.dart';
import '../res/assets/image_assets.dart';
import '../res/colors/app_color.dart';
import 'SignUp_Widget.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    TextEditingController Email = TextEditingController();
    TextEditingController Password = TextEditingController();

    return Scaffold(
      backgroundColor: AppColor.BackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageAssets.Logo,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                // margin: EdgeInsets.only(top: 60),
                padding: EdgeInsets.symmetric(vertical: 31, horizontal: 23),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    color: AppColor.whiteColor),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                    ),

                    Padding(
                      padding:  EdgeInsets.only(top: 52),
                      child: TextField_Design("Email", "Enter Your Email", Email),
                    ),
                    TextField_Design(
                        "Password", "Enter Your Password", Password),
                    SizedBox(height: 10),
                    Row(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 42),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Elevated_Button("Sign in", () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => screen_name()));
                          }, 150, 16),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have an account? ",
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
                            child: Text("Sign Up here",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColor.PrimaryColor))),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
