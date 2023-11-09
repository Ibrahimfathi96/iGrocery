import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  final Color backgroundColor;
  final Widget widget;
  final String btnText;
  final void Function() onPressed;
  const CustomAuthButton({
    super.key,
    required this.backgroundColor,
    required this.widget,
    required this.btnText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height / 18,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            widget,
            Expanded(
              child: Text(
                btnText,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}