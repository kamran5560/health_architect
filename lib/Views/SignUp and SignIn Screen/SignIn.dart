import 'package:flutter/material.dart';

import '../../Constant/Constant.dart';
import '../Your Name Screen/Your Name.dart';
import '../../res/colors/app_color.dart';
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
              child:LogoImage ()
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
                    color: AppColor.gray5),
                child: ListView(
                  children: [
                    IconRow (),

                    Padding(
                      padding:  EdgeInsets.only(top: 52),
                      child: TextField_Design("Email", "Enter Your Email", Email),
                    ),
                    TextField_Design(
                        "Password", "Enter Your Password", Password),
                    SizedBox(height: 10),
                    ForgetText(),
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
                    BotumText(context,"Don’t have an account? ","Sign Up here"),

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
