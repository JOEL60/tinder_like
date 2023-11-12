import 'package:equatable/equatable.dart';

class UserPhotosEvent extends Equatable {
  final int? albumId;

  const UserPhotosEvent({this.albumId});

  @override
  List<Object?> get props => [albumId];
}

class NextProfilePhoto extends UserPhotosEvent {
  const NextProfilePhoto() : super();
}

class PreviousProfilePhoto extends UserPhotosEvent {
  const PreviousProfilePhoto() : super();
}
