import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/views/Routes_Navigation/home.dart';
class Route_Navigation extends StatelessWidget {
  const Route_Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,

        title: Center(
          child: Text(
              "This is a route navigation screen"
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Get.to(
              Home(),
              //full screen diolog
              fullscreenDialog: true,
              //animation
              transition: Transition.zoom,
              duration: Duration(seconds: 1),
              curve: Curves.bounceInOut,
              //no option to previous screen
              // Get.off(Home())
              //previous screen and youtes not apply,
              // Get.offAll(Home())



            );


          }, child:Center(child: Text("Go to Home Screen")))

        ],
      ),
    );
  }
}
