// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PixabayDTO _$PixabayDTOFromJson(Map<String, dynamic> json) => PixabayDTO(
      id: json['id'],
      webformatURL: json['webformatURL'] as String,
      largeImageURL: json['largeImageURL'] as String,
      tags: json['tags'] as String,
      views: json['views'] as int,
      downloads: json['downloads'] as int,
    );

Map<String, dynamic> _$PixabayDTOToJson(PixabayDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'webformatURL': instance.webformatURL,
      'largeImageURL': instance.largeImageURL,
      'tags': instance.tags,
      'views': instance.views,
      'downloads': instance.downloads,
    };
