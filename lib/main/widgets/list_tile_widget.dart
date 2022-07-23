import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      isThreeLine: false,
      leading: image,
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
      subtitle: const Text('Developer'),
      trailing: IconButton(
        onPressed: () {
          print('Friend is deleted');
        },
        icon: const Icon(
          Icons.close,
          color: Color(0xffCF6679),
          size: 24,
        ),
      ),
    );
  }
}
