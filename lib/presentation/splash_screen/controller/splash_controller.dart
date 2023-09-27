// ignore_for_file: unnecessary_overrides, duplicate_ignore

import '/core/app_export.dart';
import '../models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(AppRoutes.loginWithEmailIdScreen);
    });
  }

  // ignore: unnecessary_overrides
  @override
  void onClose() {
    super.onClose();
  }
}
