import 'package:e_commerce/feature/cardsample/cardsample_controller.dart';
import 'package:get/get.dart';

class CardSampleBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(CardSampleController());
  }

}
