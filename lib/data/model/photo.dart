
import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable(explicitToJson: true)
class Photo {
  final int id;
  final String webformatURL;
  final String largeImageURL;
  final String tags;
  final int views;
  final int downloads;

  Photo({
    required this.id,
    required this.webformatURL,
    required this.largeImageURL,
    required this.tags,
    required this.views,
    required this.downloads,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
