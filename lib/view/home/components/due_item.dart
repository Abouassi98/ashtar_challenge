import 'package:flutter/material.dart';

import '../../widgets/custom_outlined_button.dart';


class DueItem extends StatelessWidget {
  final String title,courseName, topic, dueTip;
  final bool isWaiting;
  const DueItem(
      {Key? key,
      required this.isWaiting,
      required this.courseName,
      required this.topic,
      required this.dueTip, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              isWaiting
                  ? Icons.hourglass_bottom_rounded
                  : Icons.assignment_turned_in_outlined,
              color: const Color(0xff49ccc4),
              size: 20,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Text(
          courseName,
          style: TextStyle(
            color: Colors.grey[350],
            fontSize: 14,
          ),
        ),
        Text(
          topic,
          style: TextStyle(
            color: Colors.grey[350],
            fontSize: 14,
          ),
        ),
        Text(
          dueTip,
          style: TextStyle(
            color: Colors.grey[350],
            fontSize: 14,
          ),
        ),
        
         Padding(
           padding: const EdgeInsets.only(top: 10,bottom: 20),
           child: CustomOutlinedButton(text:isWaiting? 'Start Quiz': 'Solve Assignment',width: double.infinity,),
         ),
         Divider(height: 1,color: Colors.grey[300],)
      ],
    );
  }
}
