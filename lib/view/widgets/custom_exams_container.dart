import 'package:ashtar_challenge/core/styles/app_images.dart';
import 'package:flutter/material.dart';

import '../../../../view/widgets/custom_general_button.dart';

class CustomExamsContainer extends StatelessWidget {
  const CustomExamsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage(AppImages.hiHand),
          ),
        ),
        margin: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'EXAMS TIME',
                    style: TextStyle(
                        color: Color(
                          0xff44767B,
                        ),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    child: const Text(
                      'Here we are, Are you ready to fight ? Dont worry. we prepared some tips to be ready for your exams.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'some data some data some data some data ',
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomButton(
                    text: 'View exams tips',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
