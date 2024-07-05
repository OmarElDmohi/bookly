import 'package:books/features/home/presentation/manager/NewestCubit/States/NewestStates.dart';
import 'package:books/features/home/presentation/views/widgets/BestSellerItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:books/features/home/presentation/manager/FeaturedCubit/FeaturedCubit.dart';

import '../../manager/FeaturedCubit/States/FeaturedStates.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBloc, FeaturedState>(
        builder: (BuildContext context, state) {
          return ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 5,
              );
            },
            itemBuilder: (context, index) {
              return BestSellerItem();
            },
            itemCount: 10,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          );
        }
    );
  }
}


