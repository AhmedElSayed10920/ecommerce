import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifySignupController extends GetxController {
  goToSucces();
}

class VerifySignupControllerImp extends VerifySignupController {
  late TextEditingController email;

  @override
  goToSucces() {
    Get.offNamed(AppRoutes.sucessSignup);
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
