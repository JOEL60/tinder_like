import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:tinder_like/features/user_photos/models/user_photos.dart';
import 'package:tinder_like/features/users/models/user_model.dart';

part 'api_rest.g.dart';

ApiRest retrofitApiRest(Dio dio, {required String baseUrl}) =>
    _ApiRest(dio, baseUrl: baseUrl);

@RestApi()
abstract class ApiRest {
  @GET('/users/{userId}')
  Future<UserProfile> getUser({
    @Path('userId') required int userId,
  });

  @GET('/photos/')
  Future<List<UserPhotos>> getUserPhotos({
    @Query('albumId') required int albumId,
  });
}
