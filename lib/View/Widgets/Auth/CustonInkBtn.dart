import 'package:ecommerce/Core/Constant/color.dart';
import 'package:flutter/material.dart';

class CustonInkBtn extends StatelessWidget {
  final String inkTextBtn;
  final void Function()? onTap;
  const CustonInkBtn({super.key, required this.inkTextBtn, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        inkTextBtn,
        style: const TextStyle(color: AppColor.primaryColor, fontSize: 16),
      ),
    );
  }
}
