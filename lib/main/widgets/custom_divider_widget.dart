import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({Key? key, this.indent = 17, this.endIndent = 18})
      : super(key: key);
  final double indent;
  final double endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: const Color(0xff212121).withOpacity(0.08),
      height: 0,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
