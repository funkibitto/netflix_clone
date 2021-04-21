import 'package:flutter/material.dart';
import 'package:flutter_yamyam/app/data/model/movie.dart';

class HorizontalList extends StatefulWidget {
  final MovieCollection movieCollection;

  const HorizontalList(this.movieCollection);

  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Text(
            widget.movieCollection.title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: GestureDetector(
              onTap: () {
                print('===비디오 클릭');
              },
              child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 30),
                  child: Row(
                    children: List.generate(widget.movieCollection.list.length,
                        (index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 110,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                                image: AssetImage(
                                    widget.movieCollection.list[index].img),
                                fit: BoxFit.cover)),
                      );
                    }),
                  ))),
        )
      ],
    );
  }
}
