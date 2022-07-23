import 'package:flutter/material.dart';

class TwoButtonsWidget extends StatefulWidget {
  const TwoButtonsWidget({Key? key}) : super(key: key);

  @override
  State<TwoButtonsWidget> createState() => _TwoButtonsWidgetState();
}

class _TwoButtonsWidgetState extends State<TwoButtonsWidget> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DeleteOrAdd(
            isActive: index == 1,
            title: 'Delete',
            onTap: () {
              index = 1;
              setState(() {});
            }),
        const SizedBox(width: 16),
        DeleteOrAdd(
            isActive: index == 2,
            title: 'Add',
            onTap: () {
              index = 2;
              setState(() {});
            }),
      ],
    );
  }
}

class DeleteOrAdd extends StatelessWidget {
  const DeleteOrAdd(
      {Key? key,
      required this.isActive,
      required this.title,
      required this.onTap})
      : super(key: key);

  final bool isActive;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          style: isActive
              ? ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  primary: const Color.fromRGBO(98, 0, 238, 1),
                )
              : ElevatedButton.styleFrom(
                  elevation: 0,
                  side: BorderSide(
                      width: 1, color: Color(0xff000000).withOpacity(0.12)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  primary: Color.fromARGB(255, 255, 255, 255),
                ),
          onPressed: onTap,
          child: Text(
            title.toUpperCase(),
            style: isActive
                ? const TextStyle(
                    fontWeight: FontWeight.w500, letterSpacing: 1.25)
                : const TextStyle(
                    color: Color.fromRGBO(98, 0, 238, 1),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.25),
          ),
        ),
      ),
    );
  }
}
