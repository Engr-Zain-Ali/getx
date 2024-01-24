
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController{
  final emailController=TextEditingController().obs;
  final passwordController=TextEditingController().obs;

  void loginApi()async {
    try {
      final response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text,
          });
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Get.snackbar("Login .......", "Login Sucessfully!!!");
      } else {
        Get.snackbar(

          "Invalid User name and password.......", data['error'],);

      }
    } catch (e) {
      Get.snackbar("Exception .......", e.toString(),);

    }
  }
}