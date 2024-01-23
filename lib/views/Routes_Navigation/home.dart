import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/views/Routes_Navigation/route_navigation.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "This is a home Screen"

        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is a home Screen"),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: (){
              }, child:Text("Next Screen")),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
               Get.back();
              }, child:Text("BAck to Screen")),
            ],
          ),
        ],
      ),
    );
  }
}
