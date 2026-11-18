import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:random_user_with_clean_architechture/user/domain/entities/user_response_entity.dart';
import 'package:random_user_with_clean_architechture/user/domain/usecase/get_user_usecase.dart';

class UserController extends GetxController {

  final GetUsersUseCase getUsersUseCase ;

  UserController({required this.getUsersUseCase});

  final RxBool isLoading = false.obs ;
  
  final Rxn<UserResponseEntity> userResponse  = Rxn<UserResponseEntity>();
  final RxString errorMessage = ''.obs;

  

  Future<void> getUsers() async {
    try{
      isLoading.value = true ;
      errorMessage.value = '';
      
      userResponse.value = await getUsersUseCase(); 
    }catch(e){
      errorMessage.value = e.toString();
    }finally{
      isLoading.value = false ;
    }
  }


  @override
  void onInit() {
    super.onInit();
    getUsers();
  }
}