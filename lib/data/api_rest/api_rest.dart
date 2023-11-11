import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:tinder_like/features/users/models/user_model.dart';

part 'api_rest.g.dart';

ApiRest retrofitApiRest(Dio dio, {required String baseUrl}) =>
    _ApiRest(dio, baseUrl: baseUrl);

@RestApi()
abstract class ApiRest {
  @GET('/users/{userId}')
  Future<UserProfile> getUsers({
    @Path("userId") required int userId,
  });

  @GET('/photos/')
  Future<List<UserPhotos>> getUserPhotos(
      {@Query('albumId') required int albumId});
}

@immutable
@JsonSerializable()
class UserPhotos {
  @JsonKey(name: 'url')
  final String url;

  const UserPhotos({required this.url});

  factory UserPhotos.fromJson(Map<String, dynamic> json) =>
      _$UserPhotosFromJson(json);

  Map<String, dynamic> toJson() => _$UserPhotosToJson(this);
}
