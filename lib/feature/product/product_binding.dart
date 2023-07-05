import 'package:e_commerce/feature/product/product_controller.dart';
import 'package:get/get.dart';


class ProductBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(ProductController());
  }

}