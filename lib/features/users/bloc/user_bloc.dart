import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinder_like/data/api_rest/api_rest.dart';
import 'package:tinder_like/features/users/models/user_model.dart';

part 'user_bloc.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _UserLoading;
  const factory UserState.error() = _UserError;
  const factory UserState.success(
      {required UserProfile usersProfiles,
      required int selectedUserId}) = _UserSuccess;
}

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUser({required int userId}) = _UserEvent;
  const factory UserEvent.previous() = _UserPreviousEvent;
  const factory UserEvent.next() = _UserNextEvent;
}

class UserBloc extends Bloc<UserEvent, UserState> {
  final ApiRest apiRest;

  UserBloc({required this.apiRest}) : super(const UserState.loading()) {
    on<UserEvent>(_onUserEvent);
  }

  void _onUserEvent(UserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    if (event is _UserEvent) {
      try {
        final result = await apiRest.getUsers(userId: event.userId);
        final selectedUserId = event.userId;
        emit(UserState.success(
            usersProfiles: result, selectedUserId: selectedUserId));
      } catch (e) {
        emit(const UserState.error());
      }
    }
  }

  void _onPreviousEvent(UserEvent event, Emitter<UserState> emit) {
    final currentState = state;
    if (currentState is _UserSuccess) {
      final currentIndex = currentState.usersProfiles.id;
      if (currentIndex > 0) {
        final previousUser = currentIndex - 1;
        emit(UserState.success(
               usersProfiles: currentState.usersProfiles, selectedUserId: previousUser));
      }
    }
  }

  void _onNextEvent(UserEvent event, Emitter<UserState> emit) {
    final currentState = state;
    if (currentState is _UserSuccess) {
      final currentIndex = currentState.usersProfiles.id;
      if (currentIndex > 0) {
        final nextUser = currentIndex + 1;
        emit(UserState.success(
               usersProfiles: currentState.usersProfiles, selectedUserId: nextUser));
      }
    }
  }
}
