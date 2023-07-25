import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial/controller/tap_controller.dart';

import '../controller/list_controller.dart';

Future<void> init() async{
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}