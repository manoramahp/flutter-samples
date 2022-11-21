import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_1/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  // Get.find() will find the registered controller and assign to variable
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Text(
                "Screen was clicked ${_counterController.counter.value} times")),
        SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                Get.back(); // go back in ui, this is possible only if we use GetMaterialApp in main.dart
              },
              child: Text("Go back")),
        )
      ]),
    );
  }
}
