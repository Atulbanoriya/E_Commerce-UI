import 'package:e_commerce/feature/categories/categories_controller.dart';
import 'package:get/get.dart';

class CategoriesBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(CategoriesController());
  }

}