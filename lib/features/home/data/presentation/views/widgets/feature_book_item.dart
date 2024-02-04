import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FeatureBookItem extends StatelessWidget {
  const FeatureBookItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        20,
      ),
      child: AspectRatio(
        aspectRatio: 2.3 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Image(
            image: NetworkImage(
                'https://altibrah.ae/img/authors/34105c8a0466f59c46d.JPG'),
          ),
        ),
      ),
    );
  }
}
