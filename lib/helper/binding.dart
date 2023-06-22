import 'package:get/get.dart';
import '../core/network_viewmodel.dart';
import '../core/viewmodel/auth_viewmodel.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());

    Get.lazyPut(() => NetworkViewModel());
  }
}
