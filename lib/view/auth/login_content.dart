import 'package:ashtar_challenge/core/styles/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/viewmodel/auth_viewmodel.dart';
import '../widgets/custom_general_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_form_field.dart';

class LoginView extends GetWidget<AuthViewModel> {
  final _formKey = GlobalKey<FormState>();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 126, bottom: 42),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(Sizes.paddingH14),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Welcome,',
                          fontSize: Sizes.font28,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Sizes.marginV12,
                    ),
                    const CustomText(
                      text: 'Sign in to Continue',
                      fontSize: Sizes.font14,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: Sizes.marginV40,
                    ),
                    CustomTextFormField(
                      title: 'Email',
                      hintText: 'mohamedabouassi96@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                      validatorFn: (value) {
                        if (value!.isEmpty) {
                          return 'Email invalid or not found';
                        }
                        return null;
                      },
                      onSavedFn: (value) {
                        controller.email = value;
                      },
                    ),
                    const SizedBox(
                      height: Sizes.marginV32,
                    ),
                    CustomTextFormField(
                      title: 'Password',
                      hintText: '***********',
                      obscureText: true,
                      validatorFn: (value) {
                        if (value!.isEmpty) {
                          return 'Password is incorrect';
                        }
                        return null;
                      },
                      onSavedFn: (value) {
                        controller.password = value;
                      },
                    ),
                    const SizedBox(
                      height: Sizes.marginV20,
                    ),
                    const CustomText(
                      text: 'Forgot Password?',
                      fontSize: 14,
                      alignment: Alignment.centerRight,
                    ),
                    const SizedBox(
                      height: Sizes.marginV20,
                    ),
                    CustomButton(
                      text: 'SIGN IN',
                      high: Sizes.buttonHeight48,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          controller.signInWithEmailAndPassword(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Sizes.marginV28,
          ),
        ],
      ),
    );
  }
}
