import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPassController extends GetxController {
  goToVerifyCode();
}

class ForgetPassControllerImp extends ForgetPassController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  goToVerifyCode() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      return Get.offNamed(AppRoutes.verifyCode);
    } else {
      return "Not Valid";
    }
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
