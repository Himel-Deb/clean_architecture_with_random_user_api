import 'package:random_user_with_clean_architechture/user/domain/repositories/user_repositories.dart';

import '../entities/user_response_entity.dart';

class GetUsersUseCase {
  final UserRepository repository;

  GetUsersUseCase({required this.repository});

  Future<UserResponseEntity> call() async {
    return await repository.getUsers();
  }
}