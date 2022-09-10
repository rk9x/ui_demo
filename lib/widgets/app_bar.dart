import 'package:flutter/material.dart';
import 'package:ui_demo/utils/utils.dart';

class DemoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DemoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.account_circle_rounded,
        ),
      ),
      centerTitle: false,
      title: Text(
        'Tata Neu',
        style: commonTextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_sharp,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
