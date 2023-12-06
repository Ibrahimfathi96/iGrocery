import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_grocery/Core/Utils/app_assets.dart';
import 'package:i_grocery/Core/Utils/app_text_styles.dart';
import 'package:i_grocery/Core/Utils/spacing.dart';
import 'package:i_grocery/Features/Home/ui/widgets/home_search_bar.dart';
import 'package:i_grocery/Features/Home/ui/widgets/location.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            children: [
              vGap(10),
              Image.asset(
                AppAssets.carrotImg,
                width: 30.w,
                height: 30.h,
              ),
              vGap(8),
              const Location(
                location: "Egypt, Zagazig",
              ),
              vGap(20),
              const HomeSearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
