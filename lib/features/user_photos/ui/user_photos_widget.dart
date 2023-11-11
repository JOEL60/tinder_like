import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tinder_like/data/api_rest/api_rest.dart';

class Photos extends StatelessWidget {
  final List<UserPhotos> photos;

  const Photos({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: photos.map((onePhoto) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: onePhoto.url,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          );
        }).toList(),
      ),
    );
  }
}
