import 'package:equatable/equatable.dart';

class GetUserPhotosEvent extends Equatable {
  final int albumId;

  const GetUserPhotosEvent({required this.albumId});

  @override
  List<Object> get props => [albumId];
}
