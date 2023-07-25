import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial/controller/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find<TapController>();


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,size: 24,),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
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
              controller.decreaseX();
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
                    "Decrease",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
