import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_like/data/api_rest/api_rest.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_event.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_state.dart';
import 'package:tinder_like/features/user_photos/models/user_photos.dart';

class UserPhotosBloc extends Bloc<UserPhotosEvent, UserPhotosState> {
  final ApiRest apiRest;

  UserPhotosBloc({required this.apiRest}) : super(UserPhotosLoading()) {
    on<NextProfilePhoto>(_onNextUserPhotoToState);
    on<PreviousProfilePhoto>(_onPreviousUserPhotoToState);
    on<UserPhotosEvent>(_onUserPhotoToState);
  }

  FutureOr<void> _onUserPhotoToState(
      UserPhotosEvent event, Emitter<UserPhotosState> emit) async {
    emit(UserPhotosLoading());
    try {
      final List<UserPhotos> photos = await apiRest.getUserPhotos(albumId: 1);
      emit(UserPhotosSuccess(photos, 1));
    } catch (error) {
      emit(UserPhotosFailure(error.toString()));
      rethrow;
    }
  }

  FutureOr<void> _onNextUserPhotoToState(
      NextProfilePhoto event, Emitter<UserPhotosState> emit) async {
    final currentState = state;
    if (currentState is UserPhotosSuccess) {
      final currentIndex = currentState.selectedPhotosId;
      final nextUser = currentIndex >= 10 ? 1 : currentIndex + 1;
      try {
        final List<UserPhotos> photos =
            await apiRest.getUserPhotos(albumId: nextUser);
        emit(UserPhotosSuccess(photos, nextUser));
      } catch (error) {
        emit(UserPhotosFailure(error.toString()));
      }
    }
  }

  FutureOr<void> _onPreviousUserPhotoToState(
      PreviousProfilePhoto event, Emitter<UserPhotosState> emit) async {
    final currentState = state;
    if (currentState is UserPhotosSuccess) {
      try {
        final currentIndex = currentState.selectedPhotosId;
        final previousUser = currentIndex <= 1 ? 10 : currentIndex - 1;
        final List<UserPhotos> photos =
            await apiRest.getUserPhotos(albumId: previousUser);
        emit(UserPhotosSuccess(photos, previousUser));
      } catch (error) {
        emit(UserPhotosFailure(error.toString()));
        rethrow;
      }
    }
  }
}
