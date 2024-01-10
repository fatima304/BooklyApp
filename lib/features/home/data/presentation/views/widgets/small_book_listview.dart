import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/feature_book_item.dart';

class SmallBookListView extends StatelessWidget {
  const SmallBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: FeatureBookItem(),
          );
        },
      ),
    );
  }
}
