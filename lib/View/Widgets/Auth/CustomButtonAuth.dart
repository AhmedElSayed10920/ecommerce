import 'package:ecommerce/Core/Constant/color.dart';
import 'package:flutter/material.dart';

class CustomBtnAuth extends StatelessWidget {
  final String btnText;
  final void Function()? onPressed;
  const CustomBtnAuth({super.key, required this.btnText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(vertical: 13 ),
      color: AppColor.primaryColor,
      child: Text(
        btnText,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
