import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_1/controllers/counterController.dart';
import 'package:getx_sample_1/screens/other.dart';

class HomeScreen extends StatelessWidget {
  // Get.put is used to register the controllowe for the first time
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Wrap everything inside the widget within Obx to update the ui with state variable value changes
      body: Obx((() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Clicks: ${counterController.counter.value}")),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(OtherScreen()); // go to OtherScreen
                    },
                    child: Text("Open other screen")),
              )
            ],
          ))),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increment();
          },
          child: Icon(Icons.add)),
    );
  }
}
