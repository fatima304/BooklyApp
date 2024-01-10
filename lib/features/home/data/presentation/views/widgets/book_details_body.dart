import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/similar_book.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/section_book_details.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBookDetailsAppBar(),
                DetailsBookSection(),
                Expanded(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SimiralBookSection(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
