import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      leading: const Icon(Icons.menu),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 23.0),
          child: Icon(Icons.notifications_none),
        ),
      ],
      backgroundColor: const Color(0xFF5E72EB),
      elevation: 0,
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
