import 'package:books/features/home/presentation/manager/FeaturedCubit/FeaturedCubit.dart';
import 'package:books/features/home/presentation/manager/FeaturedCubit/States/FeaturedStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/BookModel.dart';
import 'bookitem.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBloc, FeaturedState>(
        builder: (BuildContext context, state) {
      if (state is FeaturedStateSuccess) {
        return ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: 5,
          ),
          itemBuilder: (context, index) {
            return BookItem.fromModel(myModel: state.result[index]);
          },
          itemCount: state.result.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 30),
        );
      } else {
        return ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: 5,
          ),
          itemBuilder: (context, index) {
            return BookItem();
          },
          itemCount: 1,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 30),
        );
      }
    });
  }
}
