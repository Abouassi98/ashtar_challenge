import 'package:flutter/material.dart';

import '../../core/styles/app_images.dart';
import '../../core/styles/sizes.dart';
import '../widgets/custom_text.dart';
import 'login_content.dart';

class SignInScreenCompact extends StatelessWidget {
  const SignInScreenCompact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.loginBackground,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: Sizes.screenMarginV16,
                  horizontal: Sizes.screenMarginH28,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Center(
                        child: CustomText(
                            text: 'ashter challenge',
                            fontSize: Sizes.font28,
                            color: Color(0xff49ccc4),
                            alignment: Alignment.bottomCenter,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: LoginView(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
