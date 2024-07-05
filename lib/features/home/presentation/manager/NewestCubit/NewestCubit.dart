import 'package:books/core/utils/ApiServices.dart';
import 'package:books/features/home/data/repos/HomeRepoImp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

import 'States/NewestStates.dart';

class NewestBloc extends Cubit<NewestState>{
  HomeRepoImp? repo;

  NewestBloc(super.initialState){print("hi inside");}


  get(HomeRepoImp r) async{
    this.emit(NewestStateLoading());
    repo = r;
    var result = await repo?.fetchNewestBooksItems();
    result!.fold(
            (l) => emit(NewestStateFailure(msg :l)),
            (r) => emit(NewestStateSuccess(r))
    );
  }
}