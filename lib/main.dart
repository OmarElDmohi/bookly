import 'package:books/core/utils/ApiServices.dart';
import 'package:books/core/utils/appRouter.dart';
import 'package:books/core/utils/style.dart';
import 'package:books/features/home/data/repos/HomeRepoImp.dart';
import 'package:books/features/splash/presentation/views/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/manager/FeaturedCubit/FeaturedCubit.dart';
import 'features/home/presentation/manager/FeaturedCubit/States/FeaturedStates.dart';

void main() {
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(lazy:false,create: (BuildContext Context)=> FeaturedBloc(FeaturedStateInitial())..get(HomeRepoImp(apiService: ApiServices()))),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
