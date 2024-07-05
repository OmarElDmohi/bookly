

import 'package:books/features/Details/Presentation/Views/Widgets/CustomAppBar.dart';
import 'package:books/features/home/presentation/views/widgets/bookitem.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/style.dart';
import '../../../home/data/models/BookModel.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top: 48),
        child: Column(
          children: [
            CustomAppBar(),SizedBox(height: 42,),
            BookItem(),
            SizedBox(height: 42,),
            Text("The Jungle Book",style: kLargeTitle,)
          ],
        ),
      )
    ));
  }
}
