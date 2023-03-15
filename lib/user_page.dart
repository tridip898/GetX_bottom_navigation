import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation/setting_controller.dart';

class UserPage extends StatelessWidget {
  UserPage({Key? key}) : super(key: key);

  final SettingController controller=Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("${controller.count.value}"))
            ],
          ),
        ),
      ),
    );
  }
}