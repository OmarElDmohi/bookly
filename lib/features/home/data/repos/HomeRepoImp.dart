import 'package:books/core/errors/errors.dart';
import 'package:books/core/utils/ApiServices.dart';
import 'package:books/features/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';
import 'HomeRepo.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiServices apiService;

  @override
  HomeRepoImp({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooksItems() async {
    try {
      var data = await apiService.get(
          endpoint: "volumes?q=cartoon");
      List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on DioException catch (e) {
      return Left(ServerFailure(ErrorMsg: e));
    }

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooksItems() async {
    try {
      print('getting books');
      var data = await apiService.get(
          endpoint: "volumes?q=cartoon");
      List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      print('got books');
      return right(books);
    } on DioException catch (e) {
      print('error dude');
      return Left(ServerFailure(ErrorMsg: e));
    }
  }
}
