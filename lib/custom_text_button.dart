import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? backgroundColor;
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: backgroundColor != null
              ? MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return backgroundColor!;
                  },
                )
              : null,
        ),
        child: child,
      ),
    );
  }
}
