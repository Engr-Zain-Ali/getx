import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Responsiveness extends StatelessWidget {
  const Responsiveness({super.key});

  @override
  Widget build(BuildContext context) {
    // final height=MediaQuery.of(context).size.height*1;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
              "Bottom Sheet"
          ),
        ),
      ),
      body: Container(
      //  we manage simple the width and height
      //   height: height*.6,
       // width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height*.7,
        //By using get we use like this
       width: Get.width*.5,
        height: Get.height*.7,
        //full screen =10 =1 and when we sub divide the screen so use.1,.2,.3,mean this is a 10%,20%,30% of the screen

        // height: 200,
         color:Colors.black,
      )
    );
  }
}
