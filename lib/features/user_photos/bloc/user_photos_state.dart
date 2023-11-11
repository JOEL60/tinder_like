import 'package:equatable/equatable.dart';
import 'package:tinder_like/data/api_rest/api_rest.dart';

abstract class GetUserPhotosState extends Equatable {
  const GetUserPhotosState();
  
  @override
  List<Object> get props => [];
}

class GetUserPhotosLoading extends GetUserPhotosState {}

class GetUserPhotosSuccess extends GetUserPhotosState {
  final List<UserPhotos> photos;
  
  const GetUserPhotosSuccess(this.photos);
  
  @override
  List<Object> get props => [photos];
}

class GetUserPhotosFailure extends GetUserPhotosState {
  final String error;
  
  const GetUserPhotosFailure(this.error);
  
  @override
  List<Object> get props => [error];
}
