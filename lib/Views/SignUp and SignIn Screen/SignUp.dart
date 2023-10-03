import 'package:flutter/material.dart';

import 'package:health_architect/res/colors/app_color.dart';
import '../../Constant/Constant.dart';
import 'SignIn.dart';
import 'SignUp_Widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController Email = TextEditingController();
    TextEditingController Password = TextEditingController();
    TextEditingController RetypePassword = TextEditingController();

    return Scaffold(
      backgroundColor: AppColor.BackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: LogoImage ()
            ),
            Expanded(
              flex: 8,
              child: Container(
                // margin: EdgeInsets.only(top: 60),
                padding: EdgeInsets.symmetric(vertical: 31,horizontal: 23),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    color: AppColor.gray5),
                child: ListView(
                  children: [
                    IconRow (),
                    SizedBox(height: 16),

                    TextField_Design("Email", "Enter Your Email", Email),
                    TextField_Design("Password", "Enter Your Password", Password),
                    TextField_Design("Retype Password", "Enter Your Password", RetypePassword),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 42 ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Elevated_Button("Sign up", () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Sign_In()));
                          }, 150, 16),
                        ],
                      ),
                    ),
                    BotumText(context,"Have an account?","Login"),
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

