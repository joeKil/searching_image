import 'package:flutter/material.dart';
import 'package:searching_image/data/model/photo.dart';
import 'package:searching_image/ui/detail/detail_screen.dart';

class RectanglePhoto extends StatelessWidget {
  final List<Photo> pixabayList;

  const RectanglePhoto({
    super.key,
    required this.pixabayList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      itemCount: pixabayList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        final photo = pixabayList[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(photo: photo)),
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
