import 'package:flutter/material.dart';
import '../../data/select_type_data.dart';

class SelectTypeWidget extends StatefulWidget {
  const SelectTypeWidget({Key? key}) : super(key: key);

  @override
  State<SelectTypeWidget> createState() => _SelectTypeWidgetState();
}

class _SelectTypeWidgetState extends State<SelectTypeWidget> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _Buttons(
          title: SelectTypeData.selectTypes[index],
          isSelected: selectedIndex == index,
          onTap: () {
            selectedIndex = index;
            setState(() {});
          },
        ),
        itemCount: SelectTypeData.selectTypes.length,
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: isSelected
            ? MaterialStateProperty.all(const BorderSide(
                color: Color(0xffDBB2FF),
                width: 1,
              ))
            : null,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))),
        backgroundColor: MaterialStateProperty.all(isSelected
            ? const Color(0xffF2E7FE)
            : const Color.fromRGBO(0, 0, 0, 0.08)),
        elevation: MaterialStateProperty.all(0),
      ),
      onPressed: onTap,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSelected
                ? const Color(0xff6200EE)
                : const Color.fromRGBO(0, 0, 0, 0.38),
          ),
        ),
      ),
    );
  }
}
