import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Bottom_Sheet extends StatelessWidget {
  const Bottom_Sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "Bottom Sheet"
          ),
        ),
      ),
      body: ElevatedButton(onPressed: (){
        Get.bottomSheet(

          Column(
            children: [
              ListTile(
                onTap:(){Get.changeTheme(ThemeData.light());

        },
                title: Text("Light Theme"),
                leading: Icon(Icons.wb_sunny_sharp),

              ),
              ListTile(
                onTap:(){
                 Get.changeTheme(ThemeData.dark()) ;
        },
                title: Text("Dark Theme "),
                leading: Icon(Icons.dark_mode_rounded),

              ),

            ],
          ),
          barrierColor: Colors.greenAccent.shade100,
          backgroundColor: Colors.blue,
          //is dismissible is use for the not close when i am click to the outside
          isDismissible: true,
          enableDrag: true,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 3

            ),
            borderRadius: BorderRadius.circular(50),
          )



        );
      }, child: Center(child: Text("Bottom Sheet"))),
    );
  }
}
