import 'package:ecommerce/Controller/onboardingcontroller.dart';
import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:ecommerce/View/Widgets/onBoarding/DotsController.dart';
import 'package:ecommerce/View/Widgets/onBoarding/custombutton.dart';
import 'package:ecommerce/View/Widgets/onBoarding/slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Expanded(
            flex: 3,
            child: CustomSlider(),
          ),
          Expanded(
              child: Column(
            children: [
              const CustomDotsController(),
              const SizedBox(height: 40),
              const CustomButtonOnBoarding(),
              MaterialButton(
                onPressed: () {
                  Get.offAllNamed(AppRoutes.loginOrsignup);
                },
                child:Text("46".tr),
              )
            ],
          ))
        ],
      ),
    ));
  }
}
