import 'package:equatable/equatable.dart';
import 'package:tinder_like/features/user_photos/models/user_photos.dart';

abstract class UserPhotosState extends Equatable {
  const UserPhotosState();
}

class UserPhotosLoading extends UserPhotosState {
  @override
  List<Object> get props => [];
}

class UserPhotosSuccess extends UserPhotosState {
  final List<UserPhotos> photos;
  final int selectedPhotosId;

  const UserPhotosSuccess(this.photos, this.selectedPhotosId);

  @override
  List<Object> get props => [photos, selectedPhotosId];
}

class UserPhotosFailure extends UserPhotosState {
  final String error;

  const UserPhotosFailure(this.error);

  @override
  List<Object> get props => [error];
}
