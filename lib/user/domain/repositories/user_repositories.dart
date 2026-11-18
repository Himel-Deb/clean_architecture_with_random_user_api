
import 'package:random_user_with_clean_architechture/user/domain/entities/user_response_entity.dart';

abstract class UserRepository {
  Future<UserResponseEntity> getUsers();
  
}