
import 'package:get/get.dart';

import '../../model/user_model.dart';
import '../sevices/local_storage_user.dart';

class ProfileViewModel extends GetxController {
  UserModel? _currentUser;
  String? name, email, password, picUrl;

  UserModel? get currentUser => _currentUser;

  bool _loading = false;

  bool get loading => _loading;

  @override
  void onInit() {
    super.onInit();
    getCurrentUser();
  }

  getCurrentUser() async {
    _loading = true;
    _currentUser = await LocalStorageUser.getUserData();
    _loading = false;
    update();
  }


}
