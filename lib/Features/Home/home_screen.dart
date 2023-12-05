import 'package:flutter/material.dart';
import 'package:i_grocery/Core/Widgets/app_main_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppMainCard(),
      ),
    );
  }
}
