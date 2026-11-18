import '../../domain/entities/user_response_entity.dart';

import 'user_model.dart';
import 'info_model.dart';

class UserResponseModel extends UserResponseEntity {
  const UserResponseModel({
    required super.results,
    required super.info,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) {
    return UserResponseModel(
      results: (json['results'] as List<dynamic>? ?? [])
          .map((user) => UserModel.fromJson(user))
          .toList(),

      info: InfoModel.fromJson(json['info'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results
          .map((user) => (user as UserModel).toJson())
          .toList(),

      'info': (info as InfoModel).toJson(),
    };
  }
}