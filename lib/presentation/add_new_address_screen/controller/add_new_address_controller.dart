// ignore_for_file: unnecessary_overrides, prefer_const_constructors

import 'package:flutter/material.dart';

import '/core/app_export.dart';
import '/data/apiClient/api_client.dart';
import '/data/models/items/post_items_resp.dart';
import '../models/add_new_address_model.dart';

class AddNewAddressController extends GetxController {
  TextEditingController countryController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController areaController = TextEditingController();

  TextEditingController landmarkController = TextEditingController();

  Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

  RxBool checkbox = false.obs;

  RxBool checkbox1 = false.obs;

  RxBool checkbox2 = false.obs;

  PostItemsResp postItemsResp = PostItemsResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    countryController.dispose();
    stateController.dispose();
    cityController.dispose();
    pincodeController.dispose();
    areaController.dispose();
    landmarkController.dispose();
  }

  void callCreateItems(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createItems(
        onSuccess: (resp) {
          onCreateItemsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateItemsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateItemsSuccess(var response) {
    postItemsResp = PostItemsResp.fromJson(response);
  }

  void onCreateItemsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
