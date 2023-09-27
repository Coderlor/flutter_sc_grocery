// ignore_for_file: unnecessary_import

import 'package:firebase_core/firebase_core.dart';

import '/core/app_export.dart';
import '/data/apiClient/api_client.dart';
// ignore: unused_import
import '../../firebase_options.dart';
import '../network/network_info.dart';
import 'pref_utils.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() async {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }
}
