import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/views/Bottom_sheet.dart';
import 'package:getx/views/Routes_Navigation/home.dart';
import 'package:getx/views/Routes_Navigation/route_navigation.dart';
import 'package:getx/views/alert_diolog.dart';
import 'package:getx/views/reactive_statemanagement/counter_application.dart';
import 'package:getx/views/snackbar_getx.dart';
import 'package:getx/views/width_height_responciveness.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Counter(),
      // getPages: [
      //   GetPage(name: "/5", page:()=>Home()),
      //   GetPage(name: "/1", page:()=>Route_Navigation()),
      // ],


    );
  }
}