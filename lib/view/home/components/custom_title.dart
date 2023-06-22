import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title, subTitle;
  const CustomTitle({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              
              Text(
                subTitle,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Text(
            'All',
            style: TextStyle(
              color: Color(0xff49ccc4),
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
