import 'package:get/get.dart';

import 'package:flutter_yamyam/app/modules/video_detail/controllers/video_detail_controller.dart';

class VideoDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoDetailController>(
      () => VideoDetailController(),
    );
  }
}
