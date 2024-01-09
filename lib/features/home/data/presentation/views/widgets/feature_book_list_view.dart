import 'package:bookly_app/features/home/data/presentation/views/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: CustomBookItem(),
          );
        },
      ),
    );
  }
}
