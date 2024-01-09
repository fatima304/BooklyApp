import 'package:bookly_app/core/utlis/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffffdd4f),
            size: 15,
          ),
          const SizedBox(
            width: 6.3,
          ),
          Text(
            '4.8',
            style: Styles.textStyle18.copyWith(fontSize: 18),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            '(2390)',
            style: Styles.textStyle14.copyWith(
              color: const Color(
                0xff707070,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
