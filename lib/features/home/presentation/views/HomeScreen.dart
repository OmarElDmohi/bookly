import 'package:books/core/utils/style.dart';
import 'package:books/features/home/presentation/manager/FeaturedCubit/FeaturedCubit.dart';
import 'package:books/features/home/presentation/manager/FeaturedCubit/States/FeaturedStates.dart';
import 'package:books/features/home/presentation/views/widgets/bookitem.dart';
import 'package:flutter/material.dart';
import 'package:books/core/utils/assets.dart';
import 'widgets/BestSellerItem.dart';
import 'widgets/BestSellerList.dart';
import 'widgets/CustomAppBar.dart';
import 'widgets/bookList.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
              padding: const EdgeInsets.only(top: 48, left: 30),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 45),
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.28,
                              child: BookList()),
                        ),
                        Text(
                          "Best Seller",
                          style: sectionHeader,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  const SliverFillRemaining(
                      child: BestSellerList())
                ],
              )),
        ),
    );
  }
}
