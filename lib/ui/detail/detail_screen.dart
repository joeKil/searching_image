import 'package:flutter/material.dart';
import 'package:searching_image/data/model/photo.dart';

class DetailScreen extends StatelessWidget {
  final Photo photo;

  const DetailScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('클릭된사진'),
      ),
      body: Center(
        child: Hero(
          tag: photo.id,
          child: Image.network(
            photo.largeImageURL,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
