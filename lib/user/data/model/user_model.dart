import '../../domain/entities/user_entity.dart';

import 'name_model.dart';
import 'location_model.dart';
import 'login_model.dart';
import 'dob_model.dart';
import 'id_model.dart';
import 'picture_model.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.gender,
    required super.name,
    required super.location,
    required super.email,
    required super.login,
    required super.dob,
    required super.registered,
    required super.phone,
    required super.cell,
    required super.id,
    required super.picture,
    required super.nat,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      gender: json['gender'] ?? '',
      name: NameModel.fromJson(json['name'] ?? {}),
      location: LocationModel.fromJson(json['location'] ?? {}),
      email: json['email'] ?? '',
      login: LoginModel.fromJson(json['login'] ?? {}),
      dob: DobModel.fromJson(json['dob'] ?? {}),
      registered: DobModel.fromJson(json['registered'] ?? {}),
      phone: json['phone'] ?? '',
      cell: json['cell'] ?? '',
      id: IdModel.fromJson(json['id'] ?? {}),
      picture: PictureModel.fromJson(json['picture'] ?? {}),
      nat: json['nat'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'gender': gender,
      'name': (name as NameModel).toJson(),
      'location': (location as LocationModel).toJson(),
      'email': email,
      'login': (login as LoginModel).toJson(),
      'dob': (dob as DobModel).toJson(),
      'registered': (registered as DobModel).toJson(),
      'phone': phone,
      'cell': cell,
      'id': (id as IdModel).toJson(),
      'picture': (picture as PictureModel).toJson(),
      'nat': nat,
    };
  }
}