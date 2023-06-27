import 'package:flutter/material.dart';
import '../../model/pixabay_dto.dart';
import '../detail/detail_screen.dart';


class RactanglePhoto extends StatefulWidget {
  final List<PixabayDTO> photos;

  const RactanglePhoto({required this.photos});

  @override
  _RactanglePhotoState createState() => _RactanglePhotoState();
}

class _RactanglePhotoState extends State<RactanglePhoto> {
  PixabayDTO? selectedPhoto;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      itemCount: widget.photos.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        final photo = widget.photos[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(photo: photo)),
            );
          },
          child: Hero(
            tag: photo.id,
            child: Container(
              width: 166,
              height: 166,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(photo.webformatURL),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}