import 'package:flutter/material.dart';
import 'package:health_architect/res/assets/image_assets.dart';

import 'Constant/Constant.dart';

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
        child: Padding(
          padding:  EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Let us know you better",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xff656467)),)
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
                        child: Image.asset(
                          ImageAssets.girle4,
                        )),
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
                        Text("Date of birth",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff656467)),)
                      ],
                    ),
                    Row(children: [
                      Text("1999-01-01",style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Color(0xff656467)),),
                      SizedBox(width: 5,),
                      Icon(Icons.edit,color: Color(0xff656467),size: 15,),
                    ],),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,),
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
                        Text("Current Weight",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff656467)),)
                      ],
                    ),
                    Row(children: [
                      Text("124.34 lbs",style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Color(0xff656467)),),
                      SizedBox(width: 5,),
                      Icon(Icons.edit,color: Color(0xff656467),size: 15,),
                    ],),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,),
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
                        Text("Target Weight",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff656467)),)
                      ],
                    ),
                    Row(children: [
                      Text("124.34 lbs",style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Color(0xff656467)),),
                      SizedBox(width: 5,),
                      Icon(Icons.edit,color: Color(0xff656467),size: 15,),
                    ],),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,),
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
                        Text("Height",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff656467)),)
                      ],
                    ),
                    Row(children: [
                      Text("5’5’",style: TextStyle(fontSize:10,fontWeight: FontWeight.w400,color: Color(0xff656467)),),
                      SizedBox(width: 5,),
                      Icon(Icons.edit,color: Color(0xff656467),size: 15,),
                    ],),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
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