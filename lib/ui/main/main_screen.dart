import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:searching_image/ui/components/rectangle/rectangle_photo.dart';
import 'package:searching_image/ui/components/rectangle/rectangle_search_box.dart';
import 'main_view_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: RectangleSearchBox(
            onSearch: viewModel
                .searchPhotos), // Pass the searchPhotos function as a callback
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          RectanglePhoto(
              pixabayList: viewModel.pixabayList), // Pass the list of photos
        ],
      ),
    );
  }
}
