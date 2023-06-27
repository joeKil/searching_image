import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:searching_image/model/pixabay_dto.dart';

Future<List<PixabayDTO>> fetchPhotos(String query) async {
  final response = await http.get(Uri.parse('https://pixabay.com/api/?key=api키넣는자리=$query'));
  Map<String, dynamic> jsonResponse = json.decode(response.body);
  List<dynamic> hits = jsonResponse['hits'];
  return hits.map((item) => PixabayDTO.fromJson(item)).toList();
}
