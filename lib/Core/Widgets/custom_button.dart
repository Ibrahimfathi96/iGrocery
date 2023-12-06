import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final String btnText;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * 0.9,
      height: size.height / 14,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          btnText,
          style: TextStyle(
            fontSize: 22.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
