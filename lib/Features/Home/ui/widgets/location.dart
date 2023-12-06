import 'package:flutter/material.dart';
import 'package:i_grocery/Core/Utils/app_text_styles.dart';

class Location extends StatelessWidget {
  final String location;
  const Location({
    required this.location,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.location_pin,
          color: Color(0xff393636),
        ),
        Text(
          location,
          style: AppTextStyles.font18BlackSemiBold,
        ),
      ],
    );
  }
}
