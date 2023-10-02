import 'package:flutter/material.dart';
import 'package:health_architect/res/assets/image_assets.dart';

import 'Chosed Level.dart';
import 'Constant/Constant.dart';

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
              Padding(
                padding:  EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("What’s your goal?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xff656467)),)
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(             decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                        child:  Image.asset(
                          ImageAssets.girl_2page,
                        ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 42,),
                padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xffDADADA)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Lose Weight",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff656467)),)
                      ],
                    ),
                    Row(children: [
                      Image.asset(
                        ImageAssets.bag,
                      ),
                    ],),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,),
                padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xff366773)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Get Toned",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),)
                      ],
                    ),
                    Row(children: [
                      Image.asset(
                        ImageAssets.fitnes,
                      ),
                    ],),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,bottom: 50),
                padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xffDADADA)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Build Muscle",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff656467)),)
                      ],
                    ),
                    Row(children: [
                      Image.asset(
                        ImageAssets.shoulder,
                      ),
                    ],),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
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