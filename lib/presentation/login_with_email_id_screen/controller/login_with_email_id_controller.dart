import 'package:flutter/material.dart';

import '/core/app_export.dart';
import '../models/login_with_email_id_model.dart';

class LoginWithEmailIdController extends GetxController {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  Rx<LoginWithEmailIdModel> loginWithEmailIdModelObj =
      LoginWithEmailIdModel().obs;

  @override
  void onReady() {
    super.onReady();
    String userId = Get.find<PrefUtils>().getUserid();
    if (userId.isNotEmpty) {
      Get.offNamed(AppRoutes.homeScreen);
    }
  }

  @override
  void onClose() {
    super.onClose();
    email.dispose();
    password.dispose();
  }
}
