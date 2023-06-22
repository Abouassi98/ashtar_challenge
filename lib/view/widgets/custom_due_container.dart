import 'package:ashtar_challenge/view/home/components/custom_title.dart';
import 'package:flutter/material.dart';
import '../home/components/due_item.dart';


class CustomDueContainer extends StatelessWidget {
  const CustomDueContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: const EdgeInsets.all(8),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomTitle(title: 'What`s due', subTitle: 'subTitle'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25)
                  .copyWith(right: 15),
              child: const Column(
                children: [
                  DueItem(
                    courseName: 'Course  Algibra02',
                    dueTip: 'Due  to 20 Dec 2017-02:00 PM',
                    isWaiting: true,
                    title: 'Unit 2 Quiz',
                    topic: 'Topic   custom topic',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DueItem(
                    courseName: 'Course  Algibra02',
                    dueTip: 'Due  to 20 Dec 2017-02:00 PM',
                    isWaiting: false,
                    title: 'Unit 2 Quiz',
                    topic: 'Topic   custom topic',
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
