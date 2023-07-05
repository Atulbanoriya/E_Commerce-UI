import 'package:e_commerce/feature/navbar/navbar_controller.dart';
import 'package:get/get.dart';

class NavbarBinding extends Bindings{
  @override
  void dependencies() {
  Get.put(NavbarController());
  }

}