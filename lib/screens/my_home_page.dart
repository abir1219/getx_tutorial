import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial/controller/tap_controller.dart';
import 'package:getx_tutorial/screens/first_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TapController());

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(9),
        padding: const EdgeInsets.all(9),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(
              builder: (_) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "${controller.x}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )),
                );
              },
            ),
            GestureDetector(
              onTap: () {
                controller.increaseX();
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
                  "Increase",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const FirstPage());
              },
              child: Container(
                // margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                      "Go to first page",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
