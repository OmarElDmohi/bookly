import 'package:books/core/utils/appRouter.dart';
import 'package:books/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:30),
      child: Row(
        children: [
          Image.asset('assets/images/Logo.png',height: 18,),
          Spacer(),
          IconButton(onPressed: (){
          }, icon: SvgPicture.asset(AssetData.searchIcon))
        ],
      ),
    );
  }
}
