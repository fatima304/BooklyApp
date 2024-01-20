import 'package:bookly_app/core/utlis/functions/launch_url.dart';
import 'package:bookly_app/core/utlis/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            textcolor: Colors.black,
            radius: BorderRadius.only(
              topLeft: Radius.circular(17),
              bottomLeft: Radius.circular(17),
            ),
            text: '19.99 £',
            color: Colors.white,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              LaunchUrl(context, bookModel.volumeInfo.previewLink);
            },
            textcolor: Colors.white,
            radius: const BorderRadius.only(
              topRight: Radius.circular(17),
              bottomRight: Radius.circular(17),
            ),
            text: getText(bookModel),
            color: const Color.fromARGB(255, 240, 149, 149),
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
