import 'package:bookly_app/core/utlis/assets_file.dart';
import 'package:flutter/material.dart';

class FeatureBookItem extends StatelessWidget {
  const FeatureBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3 / 4,
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
    );
  }
}
