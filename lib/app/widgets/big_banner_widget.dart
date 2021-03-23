import 'package:flutter/material.dart';

class BigBanner extends StatefulWidget {
  @override
  _BigBannerState createState() => _BigBannerState();
}

class _BigBannerState extends State<BigBanner> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/banner.webp"),
                        fit: BoxFit.cover)),
              ),
              Container(
                  height: 500,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.85),
                    Colors.black.withOpacity(0.0),
                  ], end: Alignment.topCenter, begin: Alignment.bottomCenter))),
              Container(
                height: 500,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/title_img.webp",
                      width: 300,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "폭력-스릴러-감옥-부패-범죄-미국작품-영화",
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  print('== 찜하기');
                },
                child: Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "찜하기",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('== go detail');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 13,
                      left: 8,
                      top: 2,
                      bottom: 2,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Play",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  print('== 정보 클릭');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "정보",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
    );
  }
}
