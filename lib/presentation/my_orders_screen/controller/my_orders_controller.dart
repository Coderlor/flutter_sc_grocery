// ignore_for_file: unnecessary_overrides

import '/core/app_export.dart';
import '../models/my_orders_model.dart';

class MyOrdersController extends GetxController {
  Rx<MyOrdersModel> myOrdersModelObj = MyOrdersModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
