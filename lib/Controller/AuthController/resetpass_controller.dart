import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPassController extends GetxController {
  goToSucessResetPass();
}

class ResetPassControllerImp extends ResetPassController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController rePassword;

  @override
  goToSucessResetPass() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      return Get.offNamed(AppRoutes.sucessResetPass);
    } else {
      return "Not Valid";
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }
}
