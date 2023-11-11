import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_like/data/api_rest/api_rest.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_event.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_state.dart';

class UserPhotosBloc extends Bloc<GetUserPhotosEvent, GetUserPhotosState> {
  final ApiRest apiRest;

  UserPhotosBloc({required this.apiRest}) : super(GetUserPhotosLoading()) {
    on<GetUserPhotosEvent>(_onUserPhotoToState);
  }

  FutureOr<List<UserPhotos>> _onUserPhotoToState(
      GetUserPhotosEvent event, Emitter<GetUserPhotosState> emit) async {
    emit(GetUserPhotosLoading());
    try {
      final List<UserPhotos> photos =
          await apiRest.getUserPhotos(albumId: event.albumId);
      emit(GetUserPhotosSuccess(photos));
      return photos;
    } catch (error) {
      emit(GetUserPhotosFailure(error.toString()));
      rethrow;
    }
  }
}
