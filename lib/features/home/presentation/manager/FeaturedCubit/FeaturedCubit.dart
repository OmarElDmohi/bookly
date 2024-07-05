import 'package:books/core/utils/ApiServices.dart';
import 'package:books/features/home/data/repos/HomeRepoImp.dart';
import 'package:books/features/home/presentation/manager/FeaturedCubit/States/FeaturedStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

class FeaturedBloc extends Cubit<FeaturedState>{
  HomeRepoImp? repo;

  FeaturedBloc(super.initialState){print("hi inside");}

  
  get(HomeRepoImp r) async{
    this.emit(FeaturedStateLoading());
    repo = r;
    var result = await repo?.fetchFeaturedBooksItems();
    result!.fold(
            (l) => emit(FeaturedStateFailure(msg :l)),
            (r) => emit(FeaturedStateSuccess(r))
    );
  }
}