import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/coming_soon_controller.dart';

class ComingSoonView extends GetView<ComingSoonController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('ComingSoonView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ComingSoonView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}