import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/login_controller.dart';
class Login extends StatelessWidget {
 Login({super.key});
  final LoginController zContoller=Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: zContoller.emailController.value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                hintText: "Enter your email",
              ),
            ),
            SizedBox(height: 10,),
            TextField(
             controller: zContoller.passwordController.value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                hintText: "Enter your password",
              ),
            ),
              SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              zContoller.loginApi();

            }, child:Text("Login Now!!"))
          ],
        ),
      ),
    );
  }
}
