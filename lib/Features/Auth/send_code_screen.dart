import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:i_grocery/Core/Routes/routes.dart';
import 'package:i_grocery/Core/Utils/app_assets.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';
import 'package:i_grocery/Core/Utils/common.dart';

class SendCodeScreen extends StatefulWidget {
  const SendCodeScreen({super.key});

  @override
  State<SendCodeScreen> createState() => _SendCodeScreenState();
}

class _SendCodeScreenState extends State<SendCodeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () => navigate(
          context: context,
          routeName: Routes.otpCode,
        ),
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
                    "Enter your mobile number",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height / 30),
                  const Text(
                    "Mobile Number",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade300,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        CountryCodePicker(
                          onChanged: print,
                          initialSelection: 'EG',
                          favorite: const ['+20', 'EG'],
                          flagDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        SizedBox(width: width / 40),
                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Phone Number",
                            ),
                          ),
                        ),
                      ],
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
