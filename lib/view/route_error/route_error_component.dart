import 'package:flutter/material.dart';
import '../../core/styles/sizes.dart';
import '../widgets/custom_general_button.dart';
import '../widgets/custom_text.dart';
import '../../core/routing/app_router.dart';

class RouteErrorComponent extends StatelessWidget {
  const RouteErrorComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const CustomText(
          text: 'screenNotFound',
        ),
        const SizedBox(
          height: Sizes.marginV28,
        ),
        CustomButton(
          text: 'goToHome',
          onTap: () => const CheckAuthRoute().go(context),
        )
      ],
    );
  }
}
