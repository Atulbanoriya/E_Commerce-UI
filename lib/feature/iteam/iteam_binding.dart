import 'package:e_commerce/feature/iteam/iteam_controller.dart';
import 'package:get/get.dart';

class IteamBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(IteamController());
  }

}