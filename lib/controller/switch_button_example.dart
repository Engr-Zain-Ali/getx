import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/switch_controller.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {

final SW ZS=Get.put(SW());
  @override
  Widget build(BuildContext context) {
    print('DONE!!!!!!!!!');
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Notifications")),
        Obx(() =>   Switch(
          value: ZS.notification.value,
          onChanged: (value) {
            ZS.sw(value);

            // setState(() {
            //   notification = value;
            // });
          },
        ),)
        ],
      ),
    );
  }
}
