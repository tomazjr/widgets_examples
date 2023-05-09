import 'package:flutter/material.dart';

class CustomDropdownButtonFormField extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>>? items;
  final void Function(dynamic)? onChanged;
  final Widget? prefixIcon;
  final Widget? hint;
  const CustomDropdownButtonFormField({
    super.key,
    required this.items,
    required this.onChanged,
    this.prefixIcon,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: DropdownButtonFormField(
        decoration: InputDecoration(prefixIcon: prefixIcon),
        items: items,
        onChanged: onChanged,
        hint: hint,
      ),
    );
  }
}
