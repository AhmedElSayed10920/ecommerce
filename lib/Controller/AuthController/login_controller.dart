import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
  goToForgetPass();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool obscureText = true;
  isShowPassword() {
    obscureText = obscureText == true ? false : true;
    update();
  }
  @override
  goToSignup() {
    Get.offAllNamed(AppRoutes.signup);
  }

  goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  goToForgetPass() {
    Get.offNamed(AppRoutes.forgetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      return "Valid";
    } else {
      return "Not Valid";
    }
  }
}
