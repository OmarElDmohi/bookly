import 'package:books/features/home/data/models/BookModel.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/appRouter.dart';
import '../../../../../core/utils/assets.dart';

class BookItem extends StatelessWidget {
  BookModel? myModel;
  bool withModel = false;

  BookItem({super.key}) {
    withModel = false;
  }

  BookItem.fromModel({super.key, required this.myModel}) {
    withModel = true;
  }

  @override
  Widget build(BuildContext context) {
    if (!withModel) {
      return InkWell(
        onTap: () {
          AppRouter.router.go(AppRouter.kDetailsView);
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetData.poster), fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.28,
        ),
      );
    } else {
      print(myModel!.volumeInfo!.imageLinks!.thumbnail);
      return InkWell(
        onTap: () {
          AppRouter.router.go(AppRouter.kDetailsView);
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.network(
                          myModel!.volumeInfo!.imageLinks!.thumbnail.toString())
                      .image,
                  fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.28,
        ),
      );
    }
  }
}
