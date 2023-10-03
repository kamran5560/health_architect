import 'package:flutter/material.dart';
import 'package:health_architect/res/assets/image_assets.dart';

import '../../Constant/Constant.dart';
import '../You Better/You Better.dart';
import '../Your Name Screen/Your_Name_Widget.dart';

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
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Heading("Choose you fitness level"),
              ImageCard(ImageAssets.girle3),
              LevelCard (),
              Padding(
                padding:  EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  ],
                ),
              ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 80),
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