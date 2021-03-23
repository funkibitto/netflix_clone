import 'package:flutter/material.dart';
import 'package:flutter_yamyam/app/widgets/big_banner_widget.dart';
import 'package:flutter_yamyam/app/widgets/horizontal_list_widget.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: getBody(),
    );
  }

  Widget getBody() {
    final controller = widget.homeController;
    var size = MediaQuery.of(context).size;
    return Obx(() {
      return controller.isLoading.isTrue
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      width: size.height - 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigBanner(),
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(controller.movieCollections.length, (index) {
                              return HorizontalList(controller.movieCollections[index]);
                            }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
    });
  }
}
