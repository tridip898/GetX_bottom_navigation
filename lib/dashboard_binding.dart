import 'package:get/get.dart';
import 'package:getx_bottom_navigation/dashboard_controller.dart';
import 'package:getx_bottom_navigation/home_controller.dart';
import 'package:getx_bottom_navigation/setting_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SettingController>(() => SettingController());
  }
}