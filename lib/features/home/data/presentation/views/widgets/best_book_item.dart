import 'package:bookly_app/features/home/data/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/style.dart';
import 'package:bookly_app/core/utlis/constance.dart';
import 'package:bookly_app/core/utlis/assets_file.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_rating.dart';

class NewsetBookItem extends StatelessWidget {
  const NewsetBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const BookDetailsView();
            },
          ),
        );
      },
      child: SizedBox(
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
                  const Expanded(
                    child: Row(
                      children: [
                        Text(
                          '19.99 £',
                          style: Styles.textStyle20,
                        ),
                        Spacer(),
                        RatingWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
