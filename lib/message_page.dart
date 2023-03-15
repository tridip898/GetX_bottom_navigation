import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Message Page"),
        ),
      ),
    );
  }
}