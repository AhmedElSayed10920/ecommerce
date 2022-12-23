import 'package:flutter/material.dart';

class CustomBodyText extends StatelessWidget {
  final String bodyText;
  const CustomBodyText({super.key, required this.bodyText});
  @override
  Widget build(BuildContext context) {
    return Text(bodyText,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center);
  }
}
