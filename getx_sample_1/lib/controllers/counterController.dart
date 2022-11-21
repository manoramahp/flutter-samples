import 'package:get/get.dart';

class CounterController extends GetxController {
  // obs makes the integer an observable
  // every single variable which you have to keep track of its value,
  // you have to make it an observable.

  var counter = 0.obs;

  void increment() {
    counter++;
  }
}
