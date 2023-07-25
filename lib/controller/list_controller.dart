import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListController extends GetxController {
  final RxList _list = [].obs;

  RxList get list => _list;

  setValue(int value) {
    _list.add(value);
    debugPrint("Saved data => ${list.value}");
  }
}
