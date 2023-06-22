import 'package:ashtar_challenge/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../core/viewmodel/profile_viewmodel.dart';

class CheckAuthView extends StatelessWidget {
  const CheckAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileViewModel>(
        init: ProfileViewModel(),
        builder: (controller) {
          Future.delayed(
              Duration.zero,
              () => controller.currentUser == null
                  ? const LoginViewRoute().go(context)
                  : const HomeRoute().go(context));

          return const SizedBox();
        });
  }
}
