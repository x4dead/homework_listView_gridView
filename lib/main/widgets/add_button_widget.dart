import 'package:flutter/material.dart';

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        padding: const EdgeInsets.all(10),
        side: (BorderSide(
          width: 1,
          color: Colors.black.withOpacity(0.12),
        )),
        elevation: 0.5,
      ),
      onPressed: () {
        print('Clicked Add+');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Add friend'.toUpperCase(),
            style: const TextStyle(
                letterSpacing: 1.25,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          const SizedBox(
            width: 7,
          ),
          const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
