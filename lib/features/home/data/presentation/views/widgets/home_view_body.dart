import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/style.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/feature_book_list_view.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/best_book_item_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        SliverToBoxAdapter(
          child: FeatureBookListView(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 16, left: 10),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
        ),
        SliverFillRemaining(
          child: BestBookItemListView(),
        ),
      ],
    );
  }
}
