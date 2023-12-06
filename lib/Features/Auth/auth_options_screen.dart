import 'package:flutter/material.dart';
import 'package:i_grocery/Core/Routes/routes.dart';
import 'package:i_grocery/Core/Utils/app_assets.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';
import 'package:i_grocery/Core/Utils/extensions.dart';
import 'package:i_grocery/Core/Widgets/custom_social_button.dart';

class AuthOptionsScreen extends StatefulWidget {
  const AuthOptionsScreen({super.key});

  @override
  State<AuthOptionsScreen> createState() => _AuthOptionsScreenState();
}

class _AuthOptionsScreenState extends State<AuthOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  AppAssets.loginImg,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height / 10).add(
              const EdgeInsets.symmetric(horizontal: 26),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Get your Groceries\nwith iGrocery",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height / 60),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CustomAuthButton(
                          onPressed: () => context.pushNamed(Routes.login),
                          backgroundColor: AppColors.primaryColor,
                          widget: const SizedBox.shrink(),
                          btnText: "Sign in",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomAuthButton(
                          onPressed: () => context.pushNamed(Routes.register),
                          backgroundColor: AppColors.primaryColor,
                          widget: const SizedBox.shrink(),
                          btnText: "Sign up",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height / 60),
                CustomAuthButton(
                  onPressed: () => context.pushNamed(Routes.sendCode),
                  backgroundColor: AppColors.primaryColor,
                  widget: const Icon(
                    Icons.phone_android,
                    color: Colors.white,
                  ),
                  btnText: "Continue with your Phone Number",
                ),
                SizedBox(height: height / 40),
                const Text(
                  "Or connect with your social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height / 40),
                CustomAuthButton(
                  onPressed: () => context.pushNamed(Routes.home),
                  btnText: "Continue with Google",
                  backgroundColor: Colors.red,
                  widget: Image.asset(
                    AppAssets.googleLogo,
                    width: 30,
                    height: 30,
                  ),
                ),
                SizedBox(height: height / 40),
                CustomAuthButton(
                  onPressed: () => context.pushNamed(Routes.home),
                  btnText: "Continue with Facebook",
                  backgroundColor: const Color(0xff1877f2),
                  widget: Image.asset(
                    AppAssets.fbLogo,
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
