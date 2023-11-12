import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_photos.g.dart';

@immutable
@JsonSerializable()
class UserPhotos {
  final String url;

  const UserPhotos({required this.url});

  factory UserPhotos.fromJson(Map<String, dynamic> json) =>
      _$UserPhotosFromJson(json);
}
