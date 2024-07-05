import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AssetData.starIcon),
        SizedBox(width:5),
        Text("4.8",style: TextStyle(color: Colors.white, fontSize: 25)),
        SizedBox(width:5),
        Text("(1925)",style: TextStyle(color: Colors.white, fontSize: 18)),
      ],
    ) ;
  }
}
