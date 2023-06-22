import 'package:flutter/material.dart';

import '../../core/styles/responsive_widgets/widget_builders.dart';
import 'login_in_view_compact.dart';
import 'log_in_view_medium.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WindowClassLayout(
      compact: (_) => OrientationLayout(
        portrait: (_) => const SignInScreenCompact(),
      ),
      medium: (_) => OrientationLayout(
        portrait: (_) => const SignInScreenMedium(),
      ),
    );
  }
}
