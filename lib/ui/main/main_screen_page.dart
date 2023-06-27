import 'package:flutter/material.dart';
import 'package:searching_image/ui/rectangle/rectangle_photo.dart';
import '../../api/pixabay_api.dart';
import '../../model/pixabay_dto.dart';
import '../rectangle/rectangle_search_box.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<PixabayDTO> photos = [];

  Future<void> searchPhotos(String query) async {
    photos = await fetchPhotos(query);
    setState(() {});  // Trigger a rebuild to update the UI
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RactancgleSeachBox(onSearch: searchPhotos),  // Pass the searchPhotos function as a callback
      ),
      body: ListView(
          children: [
        SizedBox(height: 10),
        RactanglePhoto(photos: photos),  // Pass the list of photos
      ],
      ),
    );
  }
}