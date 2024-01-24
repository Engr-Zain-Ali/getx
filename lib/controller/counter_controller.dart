import 'package:get/get.dart';

class CounterController extends GetxController{
  //getx datatype front of datatype we write Rx
  RxInt counter=0.obs;
  CounterIncreament(){
    counter.value++;
   print(counter.value);
  }
}