import 'package:flutter/material.dart';

import '../../core/styles/app_images.dart';
import '../../core/styles/sizes.dart';
import '../widgets/custom_text.dart';
import 'login_content.dart';

class SignInScreenMedium extends StatelessWidget {
  const SignInScreenMedium({Key? key}) : super(key: key);

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: CustomText(
                          text: 'ashter challenge',
                          fontSize: Sizes.font28,
                          color: Color(0xff49ccc4),
                          alignment: Alignment.centerLeft,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: Sizes.marginH16,
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
