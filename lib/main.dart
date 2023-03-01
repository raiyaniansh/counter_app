import 'package:counter_app/screen/provider/counter_provider.dart';
import 'package:counter_app/screen/view/counterscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => CounterScreen(),
        },
      ),
    ),
  );
}
