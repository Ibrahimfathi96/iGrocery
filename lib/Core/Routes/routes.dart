import 'package:flutter/material.dart';
import 'package:i_grocery/Features/Auth/login_screen.dart';
import 'package:i_grocery/Features/Auth/otp_code_screen.dart';
import 'package:i_grocery/Features/Auth/register_screen.dart';
import 'package:i_grocery/Features/Auth/send_code_screen.dart';
import 'package:i_grocery/Features/Auth/auth_options_screen.dart';
import 'package:i_grocery/Features/Home/home_screen.dart';
import 'package:i_grocery/Features/Location/location_screen.dart';
import 'package:i_grocery/Features/Splash/splash_screen.dart';
import 'package:i_grocery/Features/Welcome/welcome_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String welcome = '/welcome';
  static const String authOptions = '/auth-options';
  static const String sendCode = '/send-code';
  static const String otpCode = '/otp-code';
  static const String login = '/login';
  static const String register = '/register';
  static const String location = '/location';
  static const String home = '/home';
}

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.welcome:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case Routes.authOptions:
        return MaterialPageRoute(
          builder: (_) => const AuthOptionsScreen(),
        );
      case Routes.sendCode:
        return MaterialPageRoute(
          builder: (_) => const SendCodeScreen(),
        );
      case Routes.otpCode:
        return MaterialPageRoute(
          builder: (_) => const OTPCodeScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case Routes.location:
        return MaterialPageRoute(
          builder: (_) => const LocationScreen(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("This is Wrong Route."),
            ),
          ),
        );
    }
  }
}
