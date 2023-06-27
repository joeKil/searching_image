import 'package:flutter/material.dart';
import 'package:searching_image/model/pixabay_dto.dart';

class DetailScreen extends StatelessWidget {
  final PixabayDTO photo;

  DetailScreen({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('클릭된사진'),
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
