import 'package:get/get.dart';
import 'package:random_user_with_clean_architechture/core/network/dio_network.dart';
import 'package:random_user_with_clean_architechture/user/domain/repositories/user_repositories.dart';

import '../../data/data_source/user_remote_data_source.dart';
import '../../data/repositories/user_repository_impl.dart';

import '../../domain/usecase/get_user_usecase.dart';
import '../controller/user_controller.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DioClient>(() => DioClient());

    Get.lazyPut(
      () => UserRemoteDataSource(
        dio: Get.find<DioClient>().dio,
      ),
    );

    Get.lazyPut<UserRepository>(
      () => UserRepositoryImpl(
        remoteDataSource: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetUsersUseCase(repository: Get.find()),
    );

    Get.lazyPut(
      () => UserController(getUsersUseCase: Get.find()),
    );
  }
}