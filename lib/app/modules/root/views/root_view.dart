import 'package:flutter/material.dart';
import 'package:flutter_yamyam/app/constants/navigation_items.dart';
import 'package:flutter_yamyam/app/modules/coming_soon/views/coming_soon_view.dart';
import 'package:flutter_yamyam/app/modules/download/views/download_view.dart';
import 'package:flutter_yamyam/app/modules/home/views/home_view.dart';
import 'package:flutter_yamyam/app/modules/search/views/search_view.dart';

import 'package:get/get.dart';

class RootView extends StatefulWidget {
  @override
  _RootViewState createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [HomeView(), ComingSoonView(), SearchView(), DownloadView()],
    );
  }

  changeActiveTab(value) {
    setState(() {
      activeTab = value;
    });
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(navigationItems.length, (index) {
            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                changeActiveTab(index);
              },
              child: Container(
                width: 80.0,
                child: Column(
                  children: [
                    Icon(
                      navigationItems[index]['icon'],
                      color: activeTab == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      navigationItems[index]['text'],
                      style: TextStyle(
                          fontSize: 10,
                          color: activeTab == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.5)),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
