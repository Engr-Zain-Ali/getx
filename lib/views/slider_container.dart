import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/opacity_controller.dart';

class SliderContainer extends StatefulWidget {
  const SliderContainer({Key? key}) : super(key: key);

  @override
  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
final opacityController zcontroller=Get.put(opacityController());

  @override

  Widget build(BuildContext context) {
    print("Widget rebuild");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Center(
            child: Container(
              width: Get.width * 0.6,
              height: Get.height * 0.2,
              color: Colors.greenAccent.withOpacity(zcontroller.opacity.value),
            ),
          ),),
          Obx(() => Slider(
            value: zcontroller.opacity.value,
            onChanged: (value) {
              zcontroller.OpacityController(value);
              // setState(() {
              //   opacity =value;
              // });

              print("Opacity Done!!");
            },
          ),),
        ],
      ),
    );
  }
}


