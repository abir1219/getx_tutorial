import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/list_controller.dart';
import 'package:getx_tutorial/screens/my_home_page.dart';

import '../controller/tap_controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ListController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,size: 24,),
          onPressed: () => Get.to(const MyHomePage()),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(9),
        padding: const EdgeInsets.all(9),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Obx(() => ListView(
          shrinkWrap: true,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) => Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                    "Value of X: ${Get.find<TapController>().x}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )),
            ),),
            Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                    "Value of Y: ${Get.find<TapController>().y}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: ()=>Get.find<TapController>().increaseX(),
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                      "Increase X",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )),
              ),
            ),
            GestureDetector(
              onTap: ()=>Get.find<TapController>().increaseY(),
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                      "Increase Y",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20)),
              child:  Center(
                  child: Text(
                    "Value of X+Y: ${Get.find<TapController>().total}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: (){
                Get.find<TapController>().totalValue();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                      "X+Y",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )),
              ),
            ),
            GestureDetector(
              onTap: (){
                controller.setValue(Get.find<TapController>().total.value);
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                      "Save data",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )),
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
