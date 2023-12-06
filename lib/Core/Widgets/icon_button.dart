import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';

class AppIconButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  const AppIconButton({
    super.key,
    required this.onPressed,
    this.icon,
    this.iconColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 46.w,
        height: 46.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: backgroundColor == null
                ? AppColors.primaryColor
                : AppColors.lightGrey,
            width: 1,
          ),
          color: backgroundColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon ?? Icons.add,
          color: iconColor ?? Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
