// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserProfile profile, int selectedUserId) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserProfile profile, int selectedUserId)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserProfile profile, int selectedUserId)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoading value) loading,
    required TResult Function(_UserError value) error,
    required TResult Function(_UserSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoading value)? loading,
    TResult? Function(_UserError value)? error,
    TResult? Function(_UserSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoading value)? loading,
    TResult Function(_UserError value)? error,
    TResult Function(_UserSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserLoadingImplCopyWith<$Res> {
  factory _$$UserLoadingImplCopyWith(
          _$UserLoadingImpl value, $Res Function(_$UserLoadingImpl) then) =
      __$$UserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadingImpl>
    implements _$$UserLoadingImplCopyWith<$Res> {
  __$$UserLoadingImplCopyWithImpl(
      _$UserLoadingImpl _value, $Res Function(_$UserLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoadingImpl implements _UserLoading {
  const _$UserLoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserProfile profile, int selectedUserId) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserProfile profile, int selectedUserId)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserProfile profile, int selectedUserId)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoading value) loading,
    required TResult Function(_UserError value) error,
    required TResult Function(_UserSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoading value)? loading,
    TResult? Function(_UserError value)? error,
    TResult? Function(_UserSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoading value)? loading,
    TResult Function(_UserError value)? error,
    TResult Function(_UserSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserLoading implements UserState {
  const factory _UserLoading() = _$UserLoadingImpl;
}

/// @nodoc
abstract class _$$UserErrorImplCopyWith<$Res> {
  factory _$$UserErrorImplCopyWith(
          _$UserErrorImpl value, $Res Function(_$UserErrorImpl) then) =
      __$$UserErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserErrorImpl>
    implements _$$UserErrorImplCopyWith<$Res> {
  __$$UserErrorImplCopyWithImpl(
      _$UserErrorImpl _value, $Res Function(_$UserErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserErrorImpl implements _UserError {
  const _$UserErrorImpl();

  @override
  String toString() {
    return 'UserState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserProfile profile, int selectedUserId) success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserProfile profile, int selectedUserId)? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserProfile profile, int selectedUserId)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoading value) loading,
    required TResult Function(_UserError value) error,
    required TResult Function(_UserSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoading value)? loading,
    TResult? Function(_UserError value)? error,
    TResult? Function(_UserSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoading value)? loading,
    TResult Function(_UserError value)? error,
    TResult Function(_UserSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserError implements UserState {
  const factory _UserError() = _$UserErrorImpl;
}

/// @nodoc
abstract class _$$UserSuccessImplCopyWith<$Res> {
  factory _$$UserSuccessImplCopyWith(
          _$UserSuccessImpl value, $Res Function(_$UserSuccessImpl) then) =
      __$$UserSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile profile, int selectedUserId});

  $UserProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$UserSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserSuccessImpl>
    implements _$$UserSuccessImplCopyWith<$Res> {
  __$$UserSuccessImplCopyWithImpl(
      _$UserSuccessImpl _value, $Res Function(_$UserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? selectedUserId = null,
  }) {
    return _then(_$UserSuccessImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      selectedUserId: null == selectedUserId
          ? _value.selectedUserId
          : selectedUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get profile {
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$UserSuccessImpl implements _UserSuccess {
  const _$UserSuccessImpl(
      {required this.profile, required this.selectedUserId});

  @override
  final UserProfile profile;
  @override
  final int selectedUserId;

  @override
  String toString() {
    return 'UserState.success(profile: $profile, selectedUserId: $selectedUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSuccessImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.selectedUserId, selectedUserId) ||
                other.selectedUserId == selectedUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile, selectedUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSuccessImplCopyWith<_$UserSuccessImpl> get copyWith =>
      __$$UserSuccessImplCopyWithImpl<_$UserSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserProfile profile, int selectedUserId) success,
  }) {
    return success(profile, selectedUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserProfile profile, int selectedUserId)? success,
  }) {
    return success?.call(profile, selectedUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserProfile profile, int selectedUserId)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(profile, selectedUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoading value) loading,
    required TResult Function(_UserError value) error,
    required TResult Function(_UserSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoading value)? loading,
    TResult? Function(_UserError value)? error,
    TResult? Function(_UserSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoading value)? loading,
    TResult Function(_UserError value)? error,
    TResult Function(_UserSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _UserSuccess implements UserState {
  const factory _UserSuccess(
      {required final UserProfile profile,
      required final int selectedUserId}) = _$UserSuccessImpl;

  UserProfile get profile;
  int get selectedUserId;
  @JsonKey(ignore: true)
  _$$UserSuccessImplCopyWith<_$UserSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) getUser,
    required TResult Function() previous,
    required TResult Function() next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? getUser,
    TResult? Function()? previous,
    TResult? Function()? next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? getUser,
    TResult Function()? previous,
    TResult Function()? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_UserPreviousEvent value) previous,
    required TResult Function(_UserNextEvent value) next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_UserPreviousEvent value)? previous,
    TResult? Function(_UserNextEvent value)? next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_UserPreviousEvent value)? previous,
    TResult Function(_UserNextEvent value)? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserEventImplCopyWith<$Res> {
  factory _$$GetUserEventImplCopyWith(
          _$GetUserEventImpl value, $Res Function(_$GetUserEventImpl) then) =
      __$$GetUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$GetUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserEventImpl>
    implements _$$GetUserEventImplCopyWith<$Res> {
  __$$GetUserEventImplCopyWithImpl(
      _$GetUserEventImpl _value, $Res Function(_$GetUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetUserEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetUserEventImpl implements _GetUserEvent {
  const _$GetUserEventImpl({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEvent.getUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserEventImplCopyWith<_$GetUserEventImpl> get copyWith =>
      __$$GetUserEventImplCopyWithImpl<_$GetUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) getUser,
    required TResult Function() previous,
    required TResult Function() next,
  }) {
    return getUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? getUser,
    TResult? Function()? previous,
    TResult? Function()? next,
  }) {
    return getUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? getUser,
    TResult Function()? previous,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_UserPreviousEvent value) previous,
    required TResult Function(_UserNextEvent value) next,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_UserPreviousEvent value)? previous,
    TResult? Function(_UserNextEvent value)? next,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_UserPreviousEvent value)? previous,
    TResult Function(_UserNextEvent value)? next,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUserEvent implements UserEvent {
  const factory _GetUserEvent({required final int userId}) = _$GetUserEventImpl;

  int get userId;
  @JsonKey(ignore: true)
  _$$GetUserEventImplCopyWith<_$GetUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserPreviousEventImplCopyWith<$Res> {
  factory _$$UserPreviousEventImplCopyWith(_$UserPreviousEventImpl value,
          $Res Function(_$UserPreviousEventImpl) then) =
      __$$UserPreviousEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserPreviousEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserPreviousEventImpl>
    implements _$$UserPreviousEventImplCopyWith<$Res> {
  __$$UserPreviousEventImplCopyWithImpl(_$UserPreviousEventImpl _value,
      $Res Function(_$UserPreviousEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserPreviousEventImpl implements _UserPreviousEvent {
  const _$UserPreviousEventImpl();

  @override
  String toString() {
    return 'UserEvent.previous()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserPreviousEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) getUser,
    required TResult Function() previous,
    required TResult Function() next,
  }) {
    return previous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? getUser,
    TResult? Function()? previous,
    TResult? Function()? next,
  }) {
    return previous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? getUser,
    TResult Function()? previous,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_UserPreviousEvent value) previous,
    required TResult Function(_UserNextEvent value) next,
  }) {
    return previous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_UserPreviousEvent value)? previous,
    TResult? Function(_UserNextEvent value)? next,
  }) {
    return previous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_UserPreviousEvent value)? previous,
    TResult Function(_UserNextEvent value)? next,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous(this);
    }
    return orElse();
  }
}

abstract class _UserPreviousEvent implements UserEvent {
  const factory _UserPreviousEvent() = _$UserPreviousEventImpl;
}

/// @nodoc
abstract class _$$UserNextEventImplCopyWith<$Res> {
  factory _$$UserNextEventImplCopyWith(
          _$UserNextEventImpl value, $Res Function(_$UserNextEventImpl) then) =
      __$$UserNextEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNextEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserNextEventImpl>
    implements _$$UserNextEventImplCopyWith<$Res> {
  __$$UserNextEventImplCopyWithImpl(
      _$UserNextEventImpl _value, $Res Function(_$UserNextEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNextEventImpl implements _UserNextEvent {
  const _$UserNextEventImpl();

  @override
  String toString() {
    return 'UserEvent.next()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNextEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) getUser,
    required TResult Function() previous,
    required TResult Function() next,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? getUser,
    TResult? Function()? previous,
    TResult? Function()? next,
  }) {
    return next?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? getUser,
    TResult Function()? previous,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_UserPreviousEvent value) previous,
    required TResult Function(_UserNextEvent value) next,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_UserPreviousEvent value)? previous,
    TResult? Function(_UserNextEvent value)? next,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_UserPreviousEvent value)? previous,
    TResult Function(_UserNextEvent value)? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _UserNextEvent implements UserEvent {
  const factory _UserNextEvent() = _$UserNextEventImpl;
}
