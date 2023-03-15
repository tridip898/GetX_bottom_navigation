import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dashboard.dart';
import 'dashboard_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/', page: ()=>Dashboard(),
            binding: DashboardBinding()),
      ],
    );
  }
}

