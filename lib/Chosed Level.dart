import 'package:flutter/material.dart';
import 'package:health_architect/res/assets/image_assets.dart';

import 'Constant/Constant.dart';
import 'You Better.dart';

class fitness_level extends StatefulWidget {
  const fitness_level({Key? key}) : super(key: key);

  @override
  State<fitness_level> createState() => _fitness_levelState();
}

class _fitness_levelState extends State<fitness_level> {
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
                    Text("Choose you fitness level",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xff656467)),)
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          ImageAssets.girle3,
                        ),)
                  ],
                ),
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                      child: Image.asset(
                        ImageAssets.L1,
                      ),),
                  Container(        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                      child: Image.asset(
                        ImageAssets.L2,
                      ),),
                  Container(        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                      child: Image.asset(
                        ImageAssets.L3,
                      ),),
                  Container(        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                      child: Image.asset(
                        ImageAssets.L4,
                      ),),
                  Container(        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                      child: Image.asset(
                        ImageAssets.L5,
                      ),),
                  Container(        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                      child: Image.asset(
                        ImageAssets.L6,
                      ),),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      ImageAssets.check,
                    ),
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
                    builder: (BuildContext context) => screen_better()));
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