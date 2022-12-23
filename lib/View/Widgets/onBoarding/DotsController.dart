import 'package:ecommerce/Controller/onboardingcontroller.dart';
import 'package:ecommerce/Core/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Data/datasource/static/static.dart';

class CustomDotsController extends StatelessWidget {
  const CustomDotsController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 5),
                      duration: const Duration(milliseconds: 500),
                      width: controller.currentPage == index ? 20 : 5,
                      height: 6,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                    ))
          ],
        );
      },
    );
  }
}
