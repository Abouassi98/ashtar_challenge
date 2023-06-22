import 'package:ashtar_challenge/core/styles/app_images.dart';
import 'package:flutter/material.dart';
import '../../../../view/widgets/custom_search_text_field.dart';
import '../home/components/notification_item.dart';
import 'custom_dialog.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Welcome Talia,',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              MediaQuery.sizeOf(context).width > 400
                  ? const CustomSearchTextField()
                  : const Icon(
                      Icons.search,
                      color: Color(
                        0xff44767B,
                      ),
                    ),
              const SizedBox(
                width: 20,
              ),
              const NotificationItem(
                icon: Icons.notifications,
                text: '1',
              ),
              const SizedBox(
                width: 10,
              ),
              const NotificationItem(
                icon: Icons.mail,
                text: '1',
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () => showLogoutDialog(context),
                child: const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.profileScreenIcon),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
