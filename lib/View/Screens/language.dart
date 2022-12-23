import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:ecommerce/Core/Localization/changelocal.dart';
import 'package:ecommerce/View/Widgets/Language/customButtonLang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: CustomButtonLang(
                textButton: "2".tr,
                onPressed: () {
                  controller.changeLang("ar");
                  Get.offNamed(AppRoutes.onBoarding);
                },
              ),
            ),
            Container(
              width: double.infinity,
              child: CustomButtonLang(
                textButton: "3".tr,
                onPressed: () {
                  controller.changeLang("en");
                  Get.offNamed(AppRoutes.onBoarding);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
