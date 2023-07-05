import 'package:e_commerce/feature/cartnavbar/cartnav_controller.dart';
import 'package:get/get.dart';

class CartNavBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(CartNavController());
  }

}