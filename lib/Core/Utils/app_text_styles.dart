import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';
import 'package:i_grocery/Core/Utils/app_font_weight.dart';

class AppTextStyles {
  static TextStyle font16BlackBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.black,
  );
  static TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.black,
  );
  static TextStyle font14GrayMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.grey,
  );
}
