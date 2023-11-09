import 'package:flutter/material.dart';

void navigate({
  required BuildContext context,
  required String routeName,
  dynamic arguments,
}) {
  Navigator.pushNamed(
    context,
    routeName,
    arguments: arguments,
  );
}

void navigateReplacement({
  required BuildContext context,
  required String routeName,
  dynamic arguments,
}) {
  Navigator.pushReplacementNamed(
    context,
    routeName,
    arguments: arguments,
  );
}
