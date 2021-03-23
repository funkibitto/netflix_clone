import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/video_detail_controller.dart';

class VideoDetailView extends GetView<VideoDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text('VideoDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'VideoDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
