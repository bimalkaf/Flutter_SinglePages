import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:youtube_tutorial_1/custom_glass_button.dart';

class GlassPage extends StatefulWidget {
  @override
  State<GlassPage> createState() => _GlassPageState();
}

class _GlassPageState extends State<GlassPage> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/d9/6c/93/d96c9383beb63a6457c96eefc3511379.jpg"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  if (isOn) {
                    isOn = false;
                  } else {
                    isOn = true;
                  }
                });
              },
              child: SizedBox(
                  height: 200,
                  width: 300,
                  child: CustomGlassButton(
                    child: Text(
                      isOn ? "OFF" : "ON",
                      style: const TextStyle(
                        fontSize: 75,
                        color: Colors.white54,
                      ),
                    ),
                    isPressed: isOn,
                  )),
            ),
          )),
    );
  }
}
