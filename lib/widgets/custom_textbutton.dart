import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  const CustomTextbutton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Color(0xFFC20937)),
        ));
  }
}
