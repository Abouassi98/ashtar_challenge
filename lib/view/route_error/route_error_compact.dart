import 'package:ashtar_challenge/view/route_error/route_error_component.dart';
import 'package:flutter/material.dart';
import '../../core/styles/sizes.dart';

class ErrorScreenCompact extends StatelessWidget {
  const ErrorScreenCompact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: Sizes.screenMarginV16,
                horizontal: Sizes.screenMarginH28,
              ),
              child: RouteErrorComponent(),
            ),
          ),
        ],
      ),
    );
  }
}
