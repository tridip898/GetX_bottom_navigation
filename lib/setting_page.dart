import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation/setting_controller.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);

  final SettingController controller=Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text("${controller.count.value}",style: TextStyle(fontSize: 20),)),
                SizedBox(height: 10,),
                MaterialButton(
                  onPressed: (){
                    Get.find<SettingController>().increment();
                  },
                  color: Colors.red,
                  child: Text("Click",style: TextStyle(fontSize: 20,color: Colors.white),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}