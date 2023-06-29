import 'package:flutter/foundation.dart';
import 'pixabay_dto.dart';

class PixabayProvider extends ChangeNotifier {
  List<PixabayDto> _pixabayList = [];

  List<PixabayDto> get pixabayList => _pixabayList;

  void setPixabayList(List<PixabayDto> pixabayList) {
    _pixabayList = pixabayList;
    notifyListeners();
  }
}