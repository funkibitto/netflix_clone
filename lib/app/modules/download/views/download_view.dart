import 'package:carousel_slider/carousel_slider.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yamyam/app/modules/download/controllers/download_controller.dart';
import 'package:get/get.dart';

class DownloadView extends GetView<DownloadController> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var _imageHeight = _size.width + kToolbarHeight;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              'Downloads',
              style: TextStyle(color: Colors.pink, fontWeight: FontWeight.w500),
            ),
            expandedHeight: _size.width,
            backgroundColor: Colors.black,
            flexibleSpace: Stack(
              children: [
                FlexibleSpaceBar(
                  background: SizedBox(
                    height: _imageHeight,
                    width: _size.width,
                    child: CarouselSlider(
                      options: CarouselOptions(height: 400.0),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: const BoxDecoration(color: Colors.amber),
                                child: ExtendedImage.network(
                                  'https://picsum.photos/200',
                                  fit: BoxFit.cover,
                                ));
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: FlexibleSpaceBar(
                    collapseMode: CollapseMode.none,
                    background: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 100,
                  color: Colors.accents[index % Colors.accents.length],
                );
              },
              childCount: 30,
            ),
          )
        ],
      ),
    );
  }
}
