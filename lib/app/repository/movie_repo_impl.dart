import 'dart:io';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_yamyam/app/data/model/movie.dart';
import 'package:flutter_yamyam/app/repository/movie_repo.dart';

class MovieRepoImpl implements MovieRepo {
  @override
  Future<List<MovieCollection>> getMovieCollection() async {
    try {
      var data = await rootBundle.loadString('assets/json/home.json');
      return  movieCollectionFromJson(data);
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

}
