// ignore_for_file: unnecessary_overrides

import '/core/app_export.dart';
import '../models/my_cart_model.dart';

class MyCartController extends GetxController {
  Rx<MyCartModel> myCartModelObj = MyCartModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
