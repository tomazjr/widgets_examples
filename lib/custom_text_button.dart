import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? backgroundColor;
  final double? sizeWidth;
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
    this.sizeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: sizeWidth ?? 200,
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
          fixedSize: sizeWidth != null
              ? MaterialStateProperty.resolveWith<Size>(
                  (states) => Size.fromWidth(sizeWidth!),
                )
              : null,
        ),
        child: child,
      ),
    );
  }
}
