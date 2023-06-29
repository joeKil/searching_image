import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/pixabay_provider.dart';
import '../detail/detail_screen.dart'; // Add your path to the provider here

class RactanglePhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pixabayProvider = Provider.of<PixabayProvider>(context);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      itemCount: pixabayProvider.pixabayList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        final photo = pixabayProvider.pixabayList[index];
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
