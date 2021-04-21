// To parse this JSON data, do
//
//     final movieCollection = movieCollectionFromJson(jsonString);

import 'dart:convert';

List<MovieCollection> movieCollectionFromJson(String str) => List<MovieCollection>.from(json.decode(str).map((x) => MovieCollection.fromJson(x)));

String movieCollectionToJson(List<MovieCollection> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MovieCollection {
  MovieCollection({
    this.title,
    this.list,
  });

  String title;
  List<Movie> list;

  factory MovieCollection.fromJson(Map<String, dynamic> json) => MovieCollection(
    title: json['title'],
    list: List<Movie>.from(json['list'].map((x) => Movie.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    'title': title,
    'list': List<dynamic>.from(list.map((x) => x.toJson())),
  };
}

class Movie {
  Movie({
    this.img,
  });

  String img;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
    img: json['img'],
  );

  Map<String, dynamic> toJson() => {
    'img': img,
  };
}
