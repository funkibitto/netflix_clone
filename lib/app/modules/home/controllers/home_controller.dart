import 'package:flutter_yamyam/app/data/model/movie.dart';
import 'package:flutter_yamyam/app/repository/movie_repo.dart';
import 'package:flutter_yamyam/app/repository/movie_repo_impl.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<MovieCollection> movieCollections;

  MovieRepo _movieRepo;

  HomeController() {
    _movieRepo = MovieRepoImpl();
  }

  @override
  void onInit() {
    loadMovieCollection();
    super.onInit();
  }

  void loadMovieCollection() async {
    isLoading(true);
    await Future.delayed(const Duration(milliseconds: 100), () {
      print('Hello, world');
    });
    final result = await _movieRepo.getMovieCollection();
    if (result != null) {
      movieCollections = result.obs;
    } else {
      print("!!!!!!!! No data");
    }
    isLoading(false);
  }

  static HomeController get to => Get.find();
}
