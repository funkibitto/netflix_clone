import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_yamyam/app/modules/video_detail/controllers/video_detail_controller.dart';

class VideoDetailView extends GetView<VideoDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: const Text('VideoDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VideoDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
