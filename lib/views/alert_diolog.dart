import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class Alert_Diolog extends StatelessWidget {
  const Alert_Diolog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text("AlertDialog")),
        backgroundColor: Colors.blue,


      ),
      body: Column(
        children: [
          ElevatedButton(onPressed:(){
            Get.defaultDialog(
              title: "kjkjffkfjs",
              titleStyle: TextStyle(fontSize: 27),
              middleTextStyle: TextStyle(fontSize: 30),
              backgroundColor: Colors.red,
              radius: 50,
              barrierDismissible: false,
              actions: [
                ElevatedButton(onPressed: (){
                  Get.back();
                }, child:Text("Cancel")),
                ElevatedButton(onPressed: (){
                  Get.back();
                }, child:Text("Conforim")),


              ],
              // buttonColor: Colors.black
              //
              //   ,
              // textCancel: "Cancel",
              // textConfirm: "Conforim",
              // confirm: Text("Conforim",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              //   cancel: InkWell(
              //       onTap: (){
              //         Navigator.pop(context);
              //       },
              //       child: Text("Cancel",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
              content: Row(
                children: [
                  CircularProgressIndicator(),
                  Expanded(child: Text("Data Loading")),


                ],
              )



            );
          },
             child: Center(child: Text("Show Diolog")))
        ],
      ),
    );
  }
}
