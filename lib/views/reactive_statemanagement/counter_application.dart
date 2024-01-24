import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/counter_controller.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //int x=0;
  //dependency ingection we add the controllers
  final CounterController zcontroller=Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
print("kjkkjkjkkj");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          zcontroller.CounterIncreament();
          // x++;
          // setState(() {
          //
          // });


        },
      ),
      body: Center(
        // child: Text(x.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold
        // ),),
       // we can listen to thehange in our screen so use the obx
        child: Obx((){
          print('jnjnjnnj');
          return Text(zcontroller.counter.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold
          ),);
        })

      ),

    );
  }
}
