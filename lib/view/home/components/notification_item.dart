import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String? text;
  const NotificationItem({Key? key, required this.icon, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Icon(
          icon,
          color: const Color(
            0xff44767B,
          ),
          size: 30,
        ),
        CircleAvatar(
          radius: 7,
          backgroundColor: const Color(0xff49ccc4),
          child: Text(
            text ?? '',
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
        ),
      ],
    );
  }
}
