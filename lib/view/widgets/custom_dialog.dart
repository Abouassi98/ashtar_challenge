import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/viewmodel/auth_viewmodel.dart';

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to log out?'),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            onPressed: () => Get.find<AuthViewModel>().signOut(context),
            child: const Text('Log Out'),
          ),
        ],
      );
    },
  );
}
