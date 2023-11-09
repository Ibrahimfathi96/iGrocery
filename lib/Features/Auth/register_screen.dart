import 'package:flutter/material.dart';
import 'package:i_grocery/Core/Routes/routes.dart';
import 'package:i_grocery/Core/Utils/app_assets.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';
import 'package:i_grocery/Core/Utils/common.dart';
import 'package:i_grocery/Core/Widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isSecured = false;
  bool emailValid = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AppAssets.loginImg2,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: width / 2 - 25,
                top: height * 0.1,
                child: Image.asset(
                  AppAssets.carrotImg,
                ),
              ),
              Positioned(
                top: height * 0.2,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Enter your Credentials to continue",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height / 20),
                const Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: width * 0.85,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "enter your username",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height / 24),
                const Text(
                  "Email Address",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: width * 0.85,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            emailValid = !emailValid;
                          });
                        },
                        icon: Icon(
                          Icons.done,
                          size: 32,
                          color: emailValid == true
                              ? AppColors.primaryColor
                              : AppColors.greyColor,
                        ),
                      ),
                      hintText: "example@example.com",
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height / 24),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: width * 0.85,
                  child: TextFormField(
                    obscureText: isSecured,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isSecured = !isSecured;
                          });
                        },
                        icon: Icon(
                          isSecured == true
                              ? Icons.visibility_off
                              : Icons.remove_red_eye,
                          color: isSecured == true
                              ? AppColors.greyColor
                              : AppColors.primaryColor,
                        ),
                      ),
                      hintText: "Password",
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "By creating & continuing you're agreeing with our",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                const Text(
                  "Terms of Service and Privacy Policy.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: () {},
                  btnText: "Sign Up",
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already hava an account? ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => navigateReplacement(
                        context: context,
                        routeName: Routes.login,
                      ),
                      child: const Text(
                        " Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
