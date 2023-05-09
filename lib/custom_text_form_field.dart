import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  const CustomTextFormField({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.datetime,
      ),
    );
  }
}
