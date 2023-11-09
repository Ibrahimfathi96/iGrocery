import 'package:flutter/material.dart';
import 'package:i_grocery/Core/Utils/app_assets.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPCodeScreen extends StatelessWidget {
  const OTPCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.keyboard_arrow_right,
          size: 36,
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: height * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AppAssets.loginImg2,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.maybePop(context),
                    child: Padding(
                      padding: EdgeInsets.only(top: height / 40),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                  ),
                  SizedBox(height: height / 10),
                  const Text(
                    "Enter your 6-digit code",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height / 30),
                  const Text(
                    "Code",
                    style: TextStyle(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 6,
                      autoFocus: true,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      animationType: AnimationType.scale,
                      textStyle: const TextStyle(color: Colors.white),
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        borderWidth: 1,
                        activeColor: AppColors.primaryColor,
                        inactiveColor: AppColors.primaryColor,
                        inactiveFillColor: Colors.white,
                        activeFillColor: AppColors.primaryColor,
                        selectedColor: AppColors.primaryColor,
                        selectedFillColor: Colors.white,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      backgroundColor: Colors.white,
                      enableActiveFill: true,
                      onCompleted: (submittedCode) {
                        debugPrint(submittedCode);
                        debugPrint("Completed");
                      },
                      onChanged: (value) {
                        debugPrint(value);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
