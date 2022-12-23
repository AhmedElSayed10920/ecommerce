import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final bool obscure;
  final String? Function(String?) valid;
  final Widget? eye;

  const CustomTextFormAuth(
      {super.key,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.obscure,
      required this.mycontroller,
      required this.valid,
      this.eye});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      decoration: InputDecoration(
          hintText: hinttext,
          label: Text(labeltext),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Icon(iconData),
          suffixIcon: eye,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      obscureText: obscure,
    );
  }
}
