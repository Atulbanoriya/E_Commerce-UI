import 'package:e_commerce/feature/cardpage/card_controller.dart';
import 'package:get/get.dart';

class CardBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(CardController());
  }

}