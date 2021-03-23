import 'package:get/get.dart';

import 'package:flutter_yamyam/app/modules/root/bindings/root_binding.dart';
import 'package:flutter_yamyam/app/modules/root/views/root_view.dart';
import 'package:flutter_yamyam/app/modules/video_detail/bindings/video_detail_binding.dart';
import 'package:flutter_yamyam/app/modules/video_detail/views/video_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: _Paths.ROOT,
      page: () => RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_DETAIL,
      page: () => VideoDetailView(),
      binding: VideoDetailBinding(),
    ),
  ];
}
