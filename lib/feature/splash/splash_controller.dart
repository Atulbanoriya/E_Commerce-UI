import 'dart:async';
import 'package:e_commerce/core/route.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    Timer(
      const Duration(seconds: 4),
          () => Get.offAllNamed(Routes.home),
    );
    super.onInit();
  }
}