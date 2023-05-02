
import 'package:get/get.dart';

class CounterController extends GetxController{
 final counter = 0.obs;

 incrementCounter(){

   counter.value++;
   print(counter.value);
 }
 decrementCounter(){

   counter.value--;
   print(counter.value);
 }

}