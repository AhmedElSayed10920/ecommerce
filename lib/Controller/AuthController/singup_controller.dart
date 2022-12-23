import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  goToCheckEmail();
  gotoLogin();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController password;
  @override
  goToCheckEmail() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      return Get.toNamed(AppRoutes.verifyCodeSignup);
    } else {
      return "Not Valid";
    }
  }

  @override
  gotoLogin() {
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
