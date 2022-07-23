import 'package:flutter/material.dart';
import '../../screens/home_screen.dart';
import '../../screens/more_screen.dart';

class AppAppBar extends StatelessWidget with PreferredSizeWidget {
  const AppAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MoreScreen()),
            );
          },
          icon: const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        )
      ],
      backgroundColor: Colors.white,
      title: const Text(
        'Profile',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
