import 'package:get/get.dart';

class SettingController extends GetxController{
  var count=0.obs;
  void increment(){
    count++;
    update();
  }
}