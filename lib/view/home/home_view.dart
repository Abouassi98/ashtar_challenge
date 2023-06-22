import 'package:flutter/material.dart';
import '../widgets/custom_announsements_container.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_due_container.dart';
import '../widgets/custom_exams_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F4F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            const CustomExamsContainer(),
            MediaQuery.sizeOf(context).width < 600
                ? const Column(
                    children: [
                      CustomAnnounsementsContainer(),
                      CustomDueContainer()
                    ],
                  )
                : const Row(
                    children: [
                      Flexible(
                          flex: 2, child: CustomAnnounsementsContainer()),
                      Expanded(flex: 1, child: CustomDueContainer())
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
