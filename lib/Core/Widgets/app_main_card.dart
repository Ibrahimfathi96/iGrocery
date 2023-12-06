import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_grocery/Core/Utils/app_assets.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';
import 'package:i_grocery/Core/Utils/app_text_styles.dart';
import 'package:i_grocery/Core/Utils/spacing.dart';
import 'package:i_grocery/Core/Widgets/icon_button.dart';

class AppMainCard extends StatelessWidget {
  const AppMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.w,
      height: 250.h,
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.lightGrey,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.banana,
            width: 100.w,
            height: 80.h,
          ),
          vGap(25),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Organic Bananas",
              style: AppTextStyles.font16BlackBold,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "7pcs, Priceg",
              style: AppTextStyles.font14GrayMedium,
            ),
          ),
          vGap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$4.99",
                style: AppTextStyles.font18BlackSemiBold,
              ),
              AppIconButton(
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
