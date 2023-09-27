// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';

import '/core/app_export.dart';
import '../models/contact_us_model.dart';

class ContactUsController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameTwoController = TextEditingController();

  TextEditingController frameThreeController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  Rx<ContactUsModel> contactUsModelObj = ContactUsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    frameTwoController.dispose();
    frameThreeController.dispose();
    emailOneController.dispose();
  }
}
