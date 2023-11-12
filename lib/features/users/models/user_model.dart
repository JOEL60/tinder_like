import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed()
abstract class UserProfile with _$UserProfile {
  factory UserProfile(
      {required int id,
      required String name,
      required String username,
      required String email,
      required String phone,
      required UserAddress address,
      required UserCompany company}) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
abstract class UserAddress with _$UserAddress {
  @JsonSerializable()
  factory UserAddress(
      {required String street,
      required String suite,
      required String city,
      required String zipcode}) = _UserAddress;

  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);

  const UserAddress._();
  String get fullUserAddress => '$street $suite $city $zipcode';
}

@freezed
abstract class UserCompany with _$UserCompany {
  @JsonSerializable()
  factory UserCompany(
      {required String name,
      required String catchPhrase,
      required String bs}) = _UserCompany;

  factory UserCompany.fromJson(Map<String, dynamic> json) =>
      _$UserCompanyFromJson(json);

  const UserCompany._();
  String get fullUserCompany => '$name $catchPhrase $bs';
}
