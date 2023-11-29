import 'package:flutter/material.dart';
import 'package:i_grocery/Core/Routes/routes.dart';
import 'package:i_grocery/Core/Utils/app_assets.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';
import 'package:i_grocery/Core/Utils/common.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateAfterThreeSeconds();
    super.initState();
  }

  void navigateAfterThreeSeconds() {
    Future.delayed(const Duration(seconds: 1000)).then(
      (value) {
        navigate(
          context: context,
          routeName: Routes.welcome,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: Image.asset(
            AppAssets.logoIconImg,
          ),
        ));
  }
}
