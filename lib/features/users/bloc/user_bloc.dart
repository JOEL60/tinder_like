import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinder_like/data/api_rest/api_rest.dart';
import 'package:tinder_like/features/users/models/user_model.dart';

part 'user_bloc.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _UserLoading;
  const factory UserState.error() = _UserError;
  const factory UserState.success({
    required UserProfile profile,
    required int selectedUserId,
  }) = _UserSuccess;
}

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUser({required int userId}) = _GetUserEvent;
  const factory UserEvent.previous() = _UserPreviousEvent;
  const factory UserEvent.next() = _UserNextEvent;
}

class UserBloc extends Bloc<UserEvent, UserState> {
  final ApiRest apiRest;

  UserBloc({required this.apiRest}) : super(const UserState.loading()) {
    on<UserEvent>((event, emit) => event.when(
          getUser: (int userId) => _onGetUserEvent(event, emit),
          previous: () => _onPreviousEvent(event, emit),
          next: () => _onNextEvent(event, emit),
        ));
  }

  void _onGetUserEvent(UserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    if (event is _GetUserEvent) {
      try {
        final result = await apiRest.getUser(userId: event.userId);
        final selectedUserId = event.userId;
        emit(
            UserState.success(profile: result, selectedUserId: selectedUserId));
      } catch (e) {
        emit(const UserState.error());
      }
    }
  }

  void _onPreviousEvent(UserEvent event, Emitter<UserState> emit) async {
    final currentState = state;
    if (currentState is _UserSuccess) {
      final currentIndex = currentState.selectedUserId;
      final previousUser = currentIndex <= 1 ? 10 : (currentIndex - 1);
      try {
        final result = await apiRest.getUser(userId: previousUser);
        emit(UserState.success(profile: result, selectedUserId: previousUser));
      } catch (e) {
        emit(const UserState.error());
      }
    }
  }

  void _onNextEvent(UserEvent event, Emitter<UserState> emit) async {
    final currentState = state;
    if (currentState is _UserSuccess) {
      final currentIndex = currentState.selectedUserId;
      final nextUser = currentIndex >= 10 ? 1 : currentIndex + 1;
      try {
        final result = await apiRest.getUser(userId: nextUser);
        emit(UserState.success(profile: result, selectedUserId: nextUser));
      } catch (e) {
        emit(const UserState.error());
      }
    }
  }
}
