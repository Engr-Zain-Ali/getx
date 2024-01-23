import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Snackbar_getx extends StatelessWidget {
  const Snackbar_getx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("GetX")),
      ),
      body: Column(
        children: [


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar(
            "Zain Ali","ksmcmkakccccccccccccccccccccccccccccc",
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            icon: const Icon(Icons.add_alert),
            duration: const Duration(seconds: 3),
           margin: EdgeInsets.all(15),
            borderRadius: 20,
            isDismissible: true,
            forwardAnimationCurve: Curves.easeOutBack,



          );
        },
      ),
    );
  }
}
