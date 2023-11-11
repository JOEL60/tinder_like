// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: UserAddress.fromJson(json['address'] as Map<String, dynamic>),
      company: UserCompany.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'company': instance.company,
    };

_$UserAddressImpl _$$UserAddressImplFromJson(Map<String, dynamic> json) =>
    _$UserAddressImpl(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
    );

Map<String, dynamic> _$$UserAddressImplToJson(_$UserAddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
    };

_$UserCompanyImpl _$$UserCompanyImplFromJson(Map<String, dynamic> json) =>
    _$UserCompanyImpl(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );

Map<String, dynamic> _$$UserCompanyImplToJson(_$UserCompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
