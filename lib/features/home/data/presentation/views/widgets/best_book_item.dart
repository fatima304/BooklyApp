import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/style.dart';
import 'package:bookly_app/core/utlis/constance.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:bookly_app/features/home/data/presentation/views/book_details_view.dart';

class NewsetBookItem extends StatelessWidget {
  const NewsetBookItem({super.key, required this.bookModel});

  final BookModel bookModel;

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
            ClipRRect(
              borderRadius: BorderRadius.circular(
                10,
              ),
              child: AspectRatio(
                aspectRatio: 2.3 / 4,
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                  fit: BoxFit.fill,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.access_alarm_outlined),
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
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGsectraFine, fontSize: 19),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle18,
                        ),
                        Spacer(),
                        //  RatingWidget(),
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
