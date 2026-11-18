import 'package:dio/dio.dart';
import 'package:random_user_with_clean_architechture/user/data/model/user_model.dart';
import 'package:random_user_with_clean_architechture/user/data/model/user_response_model.dart';

import '../../../../core/constant/api_constant.dart';

class UserRemoteDataSource {
  final Dio dio;

  UserRemoteDataSource({required this.dio});

 Future<UserResponseModel> getUsers() async {
  try {
    final response = await dio.get(
      ApiConstant.userEndpoint,
      queryParameters: ApiConstant.queryParameters,
    );

    return UserResponseModel.fromJson(
      Map<String, dynamic>.from(response.data),
    );

  } on DioException catch (e) {
  print('Error Type: ${e.type}');
  print('Error Message: ${e.message}');
  print('Response: ${e.response}');
  print('Request URL: ${e.requestOptions.uri}');

  rethrow;
}
}
}