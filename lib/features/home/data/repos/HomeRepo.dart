import 'package:books/core/errors/errors.dart';
import 'package:books/features/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure , List<BookModel>>> fetchNewestBooksItems();
  Future<Either<Failure , List<BookModel>>> fetchFeaturedBooksItems();
}