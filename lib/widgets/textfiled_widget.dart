import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class TextFiledWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final double? borderRadios;
  final int? maxLine;
  const TextFiledWidget(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      this.borderRadios = 30,
      this.maxLine = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      controller: textEditingController,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textHolder,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadios!),
              borderSide: const BorderSide(color: Colors.white, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadios!),
              borderSide: const BorderSide(color: Colors.white, width: 1))),
    );
  }
}
