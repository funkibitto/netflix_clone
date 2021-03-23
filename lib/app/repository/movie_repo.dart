
import 'package:flutter_yamyam/app/data/model/movie.dart';

abstract class MovieRepo{
  Future<List<MovieCollection>> getMovieCollection();
}
