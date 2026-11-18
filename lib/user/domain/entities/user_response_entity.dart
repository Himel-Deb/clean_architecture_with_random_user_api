import 'user_entity.dart';
import 'info_entity.dart';

class UserResponseEntity {
  final List<UserEntity> results;
  final InfoEntity info;

  const UserResponseEntity({
    required this.results,
    required this.info,
  });
}