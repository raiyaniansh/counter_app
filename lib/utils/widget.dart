import 'package:flutter/material.dart';

Widget Button(String a) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      color: Colors.white12,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    alignment: Alignment.center,
    child: Text("$a",style: TextStyle(color: Colors.white,fontSize: 25)),
  );
}
