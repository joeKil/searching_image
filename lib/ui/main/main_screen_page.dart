import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:searching_image/ui/rectangle/rectangle_photo.dart';
import '../../api/pixabay_api.dart';
import '../../model/pixabay_provider.dart';
import '../rectangle/rectangle_search_box.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Future<void> searchPhotos(String query) async {
    var photos = await fetchPhotos(query);

    var pixabayProvider = Provider.of<PixabayProvider>(context, listen: false);
    pixabayProvider.setPixabayList(photos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RactancgleSeachBox(
            onSearch:
                searchPhotos), // Pass the searchPhotos function as a callback
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          RactanglePhoto(), // Pass the list of photos
        ],
      ),
    );
  }
}
