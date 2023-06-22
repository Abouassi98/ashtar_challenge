import 'package:flutter/material.dart';
import '../../core/styles/responsive_widgets/widget_builders.dart';
import 'route_error_compact.dart';

class RouteErrorView extends StatelessWidget {
  const RouteErrorView(this.error, {super.key});

  final Exception? error;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: WindowClassLayout(
        compact: (_) => OrientationLayout(
          portrait: (_) => const ErrorScreenCompact(),
        ),
      ),
    );
  }
}
