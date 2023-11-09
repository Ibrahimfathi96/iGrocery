import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_grocery/Core/Routes/routes.dart';
import 'package:i_grocery/Core/Utils/app_assets.dart';
import 'package:i_grocery/Core/Utils/common.dart';
import 'package:i_grocery/Core/Widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppAssets.welcomeImg,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: height / 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                AppAssets.splashLogo,
              ),
              SizedBox(height: height / 60),
              const Text(
                "Welcome\nto our store",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(height: height / 60),
              const Text(
                "Ger your groceries in as fast as one hour",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: height / 30),
              CustomButton(
                onPressed: () => navigateReplacement(
                  context: context,
                  routeName: Routes.authOptions,
                ),
                btnText: "Get Started",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
