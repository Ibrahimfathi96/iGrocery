import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_grocery/Core/Routes/routes.dart';
import 'package:i_grocery/Core/Theme/app_theme.dart';
import 'package:i_grocery/Core/Utils/app_locals.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(415, 896),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'iGrocery',
        debugShowCheckedModeBanner: false,
        theme: getAppTheme(),
        initialRoute: Routes.initialRoute,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
        supportedLocales: appLocales,
        localizationsDelegates: const [
          CountryLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      ),
    );
  }
}
