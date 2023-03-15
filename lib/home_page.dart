import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController controller=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(controller.appTitle),
          centerTitle: true,
          backgroundColor: Colors.teal,
          elevation: 0,
        ),
        body: Container(
          child: Center(
            child: Text(
              "Home Page",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
