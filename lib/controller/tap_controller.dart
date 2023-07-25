import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;

  int get x => _x;

  void increaseX() {
    _x++;
    debugPrint("$_x");
    update();
  }

  void decreaseX() {
    _x > 0 ? _x-- : _x;
    debugPrint("$_x");
    update();
  }
}
