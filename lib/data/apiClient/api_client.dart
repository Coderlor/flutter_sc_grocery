// ignore_for_file: annotate_overrides, unnecessary_import

import '/core/app_export.dart';
import '/core/utils/progress_dialog_utils.dart';
import '../../core/constants/constants.dart';
import '../../core/errors/exceptions.dart';
import '../../core/network/network_info.dart';
import '../../core/utils/pref_utils.dart';

class ApiClient extends GetConnect {
  // ignore: overridden_fields
  var baseUrl = "https://api.webflow.com";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
    httpClient.addRequestModifier<dynamic>((request) {
      Map<String, String> headers = {
        "accept-version": "1.0.0",
        "Authorization": "Bearer ${ApiData().token}"
      };
      request.headers.addAll(headers);
      return request;
    });
  }

  /// is `true` when the response status code is between 200 and 299
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  Future fetchCategories(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .get('/collections/${ApiData().CategoryCollectionId}/items');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchProducts(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      id}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .get('/collections/${ApiData().ProductCollectionId}/items');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        List<dynamic> items = response.body['items'];
        items = items
            .where((element) => element['categoryid'] == id.toString())
            .toList();
        response.body['items'] = items;
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchProduct(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      id}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
          '/collections/${ApiData().ProductCollectionId}/items/${id.value}');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createItems(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '/collections/${ApiData().WishListCollectionId}/items',
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createUser(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '/collections/${ApiData().UserCollectionId}/items',
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchUser(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      // ignore: non_constant_identifier_names
      String? item_id = ''}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .get('/collections/${ApiData().UserCollectionId}/items/');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        List<dynamic> items = response.body['items'];
        items = items
            .where((element) => element['userid'] == item_id.toString())
            .toList();
        response.body['items'] = items;
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createAddress(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '/collections/${ApiData().AddressCollectionId}/items',
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchAddress(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .get('/collections/${ApiData().AddressCollectionId}/items');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        List items = response.body['items'];
        items = items
            .where((element) =>
                element['userid'] == Get.find<PrefUtils>().getUserid())
            .toList();
        response.body['items'] = items;
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchWishlist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .get('/collections/${ApiData().WishListCollectionId}/items');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        List items = response.body['items'];
        // items = items
        //     .where((element) =>
        //         element['userid'] == Get.find<PrefUtils>().getUserid())
        //     .toList();
        response.body['items'] = items;
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }
}
