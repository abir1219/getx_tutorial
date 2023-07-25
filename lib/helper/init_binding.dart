import 'package:get/get.dart';
import 'package:getx_tutorial/controller/tap_controller.dart';

import '../controller/list_controller.dart';

class InitBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
  }

}