import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  final String title;
  const CustomTitleText({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline2,
      textAlign: TextAlign.center,
    );
  }
}
