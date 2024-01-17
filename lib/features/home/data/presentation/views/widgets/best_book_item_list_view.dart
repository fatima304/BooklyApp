import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/best_book_item.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(left: 10, bottom: 16),
          child: NewsetBookItem(),
        );
      },
    );
  }
}
