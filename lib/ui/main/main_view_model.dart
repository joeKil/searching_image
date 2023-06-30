import 'package:flutter/foundation.dart';
import 'package:searching_image/data/api/pixabay_api.dart';
import 'package:searching_image/data/model/photo.dart';


class MainViewModel extends ChangeNotifier {
  List<Photo> _pixabayList = [];

  List<Photo> get pixabayList => _pixabayList;

  Future<void> searchPhotos(String query) async {
    _pixabayList = await fetchPhotos(query);
    notifyListeners();
  }
}