import 'package:ashtar_challenge/view/home/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../core/viewmodel/profile_viewmodel.dart';
import 'login_in_view.dart';

class CheckAuthView extends StatelessWidget {
  const CheckAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileViewModel>(
        init: ProfileViewModel(),
        builder: (controller) {
          return controller.currentUser == null
              ? const LogInView()
              : const HomeScreen();
        });
  }
}
