import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    Future.delayed(const Duration(seconds: 3)).then(
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
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.splashLogo),
          SizedBox(width: width / 40),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "iGrocery",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              Text(
                "online groceries",
                style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
