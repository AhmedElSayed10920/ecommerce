import 'package:ecommerce/Controller/onboardingcontroller.dart';
import 'package:ecommerce/Core/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        controller.next();
      },
      color: AppColor.primaryColor,
      textColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: Text(
        "4".tr,
        style:const TextStyle(fontSize: 15),
      ),
    );
  }
}
