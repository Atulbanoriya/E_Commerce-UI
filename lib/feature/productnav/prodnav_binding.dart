import 'package:e_commerce/feature/productnav/prodnav_controller.dart';
import 'package:get/get.dart';

class ProdNavView extends Bindings{
  @override
  void dependencies() {
   Get.put(ProdNavController());
  }

}