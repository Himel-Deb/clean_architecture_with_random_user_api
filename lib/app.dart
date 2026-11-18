import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:random_user_with_clean_architechture/user/presentation/binding/user_binding.dart';
import 'package:random_user_with_clean_architechture/user/presentation/screens/user_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: UserBinding(),
      home: UserScreen(),
    );
  }
}