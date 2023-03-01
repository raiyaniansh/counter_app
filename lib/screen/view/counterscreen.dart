import 'package:counter_app/screen/provider/counter_provider.dart';
import 'package:counter_app/utils/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text("Counter app", style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.grey.shade900,
        ),
        body: Column(
          children: [
            SizedBox(height: 200,),
            Consumer<CounterProvider>(
              builder: (context, value, child) => Text("${value.i}",style: TextStyle(fontSize: 75,color: Colors.white)),
            ),
            Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: () {
                  Provider.of<CounterProvider>(context,listen: false).incremet();
                },child: Button('+')),
                InkWell(onTap: () {
                  Provider.of<CounterProvider>(context,listen: false).decremet();
                },child: Button('-')),
                InkWell(
                  onTap: () {
                    Provider.of<CounterProvider>(context,listen: false).clear();
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white)
                    ),
                    alignment: Alignment.center,
                    child: Text("Clear",style: TextStyle(fontSize: 25,color: Colors.white)),
                  ),
                ),
                InkWell(onTap: () {
                  Provider.of<CounterProvider>(context,listen: false).x2();
                },child: Button('2x')),
                InkWell(onTap: () {
                  Provider.of<CounterProvider>(context,listen: false).x3();
                },child: Button('3x')),
              ],
            ),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}