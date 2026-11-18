import 'package:dio/dio.dart';
import 'package:random_user_with_clean_architechture/core/constant/api_constant.dart';

class DioClient {
  late Dio dio ;
  
  DioClient(){
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),

        headers: {
          'Content-Type': 'application/json',
        }
      )
    );
  }
}