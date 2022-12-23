import 'package:ecommerce/Controller/onboardingcontroller.dart';
import 'package:ecommerce/Core/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Data/datasource/static/static.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: ((context, i) {
          return Column(
            children: [
              const SizedBox(height: 30),
              Text(
                onBoardingList[i].title!,
                style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColor.Black),
              ),
              const SizedBox(height: 50),
              Image.asset(onBoardingList[i].image!,height: Get.width/1.3,),
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style:const TextStyle(
                fontWeight: FontWeight.bold,
                height: 2,
                color: AppColor.primaryColor),
                  ))
            ],
          );
        }));
  }
}
