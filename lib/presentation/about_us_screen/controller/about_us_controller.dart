// ignore_for_file: unnecessary_overrides

import '/core/app_export.dart';
import '../models/about_us_model.dart';

class AboutUsController extends GetxController {
  Rx<AboutUsModel> aboutUsModelObj = AboutUsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
