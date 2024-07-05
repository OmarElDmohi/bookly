import 'package:books/core/utils/style.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'RatingWidget.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right:47),
      child: Container(
        height:150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetData.poster),
                      fit: BoxFit.fill)),
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Container(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Harry Potter and the Goblet of Fire",maxLines: 2, overflow:TextOverflow.ellipsis,
                      style: kTitle
                    ),
                    Text("J.K. Rowling",
                        style: kSubhead),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text("90€",style: TextStyle(
                            color: Colors.white, fontSize: 22,fontWeight: FontWeight.w500)),
                        Spacer(),
                        RatingWidget()
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
