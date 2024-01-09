import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/style.dart';
import 'package:bookly_app/core/utlis/constance.dart';
import 'package:bookly_app/core/utlis/assets_file.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_rating.dart';

class BestBookItem extends StatelessWidget {
  const BestBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20
                        .copyWith(fontFamily: kGsectraFine, fontSize: 19),
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'J.K Rowling',
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        '19.99 £',
                        style: Styles.textStyle20.copyWith(),
                      ),
                      const Spacer(),
                      const RatingWidget(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
