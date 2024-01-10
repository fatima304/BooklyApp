import 'package:bookly_app/core/utlis/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
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
            textcolor: Colors.white,
            radius: BorderRadius.only(
              topRight: Radius.circular(17),
              bottomRight: Radius.circular(17),
            ),
            text: 'Free preview',
            color: Color.fromARGB(255, 240, 149, 149),
          ),
        ),
      ],
    );
  }
}
