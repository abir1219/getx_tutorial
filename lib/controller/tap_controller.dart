import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;

  int get x => _x;

  final RxInt _y = 0.obs;

  RxInt get y => _y;

  final RxInt _total = 0.obs;

  RxInt get total => _total;

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

  increaseY() => _y.value++;

  decreaseY() => _y > 0 ? _y.value-- : _y;

  totalValue() => _total.value = _x + _y.value;
}
