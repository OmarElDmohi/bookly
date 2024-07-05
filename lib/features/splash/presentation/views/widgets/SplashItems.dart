import 'package:books/features/home/presentation/views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:books/core/utils/assets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/appRouter.dart';

class SplashItems extends StatefulWidget {
  const SplashItems({super.key});

  @override
  State<SplashItems> createState() => _SplashItemsState();
}

class _SplashItemsState extends State<SplashItems>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> SlideAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTextAnimation();
    navigateToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 300, fit: BoxFit.fitWidth,
            image: AssetImage(AssetData.logo),),
          AnimatedBuilder(
            animation: SlideAnimation,
            builder: (context, _) {
              return SlideTransition(
                  position: SlideAnimation,
                  child: Container(width: 300,
                      child: Text(
                        "أهلا بيـــــــــــــــــــــــــــــــــــــــــك يا باشا",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.teal, fontSize: 20,),)));
            },
          )
        ],
      ),
    );
  }

  void startTextAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    SlideAnimation =
        Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0)).animate(
            animationController);
    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(Duration(seconds: 1),(){
      AppRouter.router.push(AppRouter.kHomeView);
    });
  }
}
