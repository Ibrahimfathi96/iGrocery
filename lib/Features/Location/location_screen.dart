import 'package:flutter/material.dart';
import 'package:i_grocery/Core/Routes/routes.dart';
import 'package:i_grocery/Core/Utils/app_assets.dart';
import 'package:i_grocery/Core/Utils/app_colors.dart';
import 'package:i_grocery/Core/Utils/common.dart';
import 'package:i_grocery/Core/Widgets/custom_button.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
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
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        width: width / 2,
                        height: height / 3,
                        child: Image.asset(
                          AppAssets.locationImg,
                        ),
                      ),
                    ),
                    SizedBox(height: height / 40),
                    const Center(
                      child: Text(
                        "Select your Location",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    SizedBox(height: height / 50),
                    const Center(
                      child: Text(
                        "Swithch on your location to stay in tune with what's happening in your area",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: height / 10),
                    const Text(
                      "Your Zone",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.greyColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.9,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "enter your zone",
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height / 20),
                    const Text(
                      "Your Area",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.greyColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.9,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "enter your area",
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      onPressed: () => navigateReplacement(
                        context: context,
                        routeName: Routes.home,
                      ),
                      btnText: "Submit",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
