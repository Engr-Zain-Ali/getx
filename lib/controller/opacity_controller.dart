import 'package:get/get.dart';

class opacityController extends GetxController{
  RxDouble opacity = 0.5.obs;
  OpacityController(double value){
    opacity.value=value;
    print(opacity.value);

  }
}