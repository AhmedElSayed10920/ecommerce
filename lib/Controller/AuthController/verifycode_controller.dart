import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPass();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late TextEditingController email;

  @override
  goToResetPass() {
    Get.offNamed(AppRoutes.resetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
