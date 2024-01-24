import 'package:get/get.dart';

class SW extends GetxController{
  RxBool notification = false.obs;
  sw(bool value){
    notification.value=value;
    print(notification.value);
  }
}