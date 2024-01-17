import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/style.dart';
import 'package:bookly_app/core/utlis/constance.dart';
import 'package:bookly_app/core/utlis/widgets/button_action.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/feature_book_item.dart';

class DetailsBookSection extends StatelessWidget {
  const DetailsBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child: const FeatureBookItem(
              imageUrl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fposterfoundry.com%2Fharry-potter-and-the-deathly-hallows-book-cover-poster-24x36%2F&psig=AOvVaw1Ty3IcsvN0Jd3tYMmh_XA4&ust=1705585927780000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCIiFjfPI5IMDFQAAAAAdAAAAABAY'),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30
              .copyWith(fontFamily: kGsectraFine, fontSize: 25),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const RatingWidget(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 18,
        ),
        const BookAction(),
      ],
    );
  }
}
