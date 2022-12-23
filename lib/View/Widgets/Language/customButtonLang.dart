import 'package:ecommerce/Core/Constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonLang({super.key, required this.textButton, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(horizontal: 90),
      color: AppColor.primaryColor,
      textColor: Colors.white,
      child: Text(
        textButton,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
