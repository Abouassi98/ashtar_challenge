import 'package:flutter/material.dart';

import '../../../core/styles/app_images.dart';

class AnnounsementItem extends StatelessWidget {
  final String name, degree, text;
  final String? image;
  const AnnounsementItem(
      {Key? key,
      required this.name,
      required this.degree,
      required this.text,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage(image ?? AppImages.profileScreenIcon),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    degree,
                    style: TextStyle(
                      color: Colors.grey[350],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.25,
            child: Text(
              text,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.grey[350],
                fontSize: 12,
              ),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
