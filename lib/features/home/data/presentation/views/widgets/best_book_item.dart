import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly_app/core/utlis/style.dart';
import 'package:bookly_app/core/utlis/constance.dart';
import 'package:bookly_app/core/utlis/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class NewsetBookItem extends StatelessWidget {
  const NewsetBookItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                10,
              ),
              child: AspectRatio(
                aspectRatio: 2.3 / 4,
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                      ' https://altibrah.ae/img/authors/34105c8a0466f59c46d.JPG',
                  fit: BoxFit.fill,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Image(
                    image: NetworkImage(
                        'https://altibrah.ae/img/authors/34105c8a0466f59c46d.JPG'),
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
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGsectraFine, fontSize: 19),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    bookModel.volumeInfo.authors?[0] ?? 'عاطف منصور',
                    style: Styles.textStyle14,
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
