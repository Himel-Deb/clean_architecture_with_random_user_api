import 'package:random_user_with_clean_architechture/user/data/data_source/user_remote_data_source.dart';
import 'package:random_user_with_clean_architechture/user/domain/repositories/user_repositories.dart';

import '../../domain/entities/user_response_entity.dart';


class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<UserResponseEntity> getUsers() async {
    return await remoteDataSource.getUsers();
  }
}