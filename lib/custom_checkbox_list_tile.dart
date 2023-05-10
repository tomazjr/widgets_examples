import 'package:flutter/material.dart';

class CustomCheckboxListTile extends StatelessWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final Widget? title;
  final Color? tileColor;
  const CustomCheckboxListTile({
    super.key,
    required this.value,
    required this.onChanged,
    this.title,
    this.tileColor,
  });

  @override
  Widget build(BuildContext context) {
    /// A CheckboxListTile requires a Material widget ancestor in the tree
    /// to paint itself on, which is typically provided by the app's Scaffold.
    return Material(
      child: SizedBox(
        width: 300,
        child: CheckboxListTile(
          value: value,
          onChanged: (bool? newValue) {
            onChanged!(newValue);
          },
          title: title,
          tileColor: tileColor,
        ),
      ),
    );
  }
}
