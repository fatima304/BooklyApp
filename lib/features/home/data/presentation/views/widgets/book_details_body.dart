import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/similar_book.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/section_book_details.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: CustomBookDetailsAppBar(),
                ),
                DetailsBookSection(bookModel: bookModel),
                const Expanded(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                const SimiralBookSection(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
