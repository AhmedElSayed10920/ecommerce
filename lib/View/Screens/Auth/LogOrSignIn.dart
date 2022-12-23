import 'package:ecommerce/Controller/AuthController/login_controller.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomButtonAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTitleText.dart';
import 'package:ecommerce/View/Widgets/Auth/CustonInkBtn.dart';
import 'package:ecommerce/View/Widgets/Auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      body:  Container(
        padding:const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Logo(),
              CustomTitleText(title: "14".tr),
              const SizedBox(height: 50),
              Container(
                width: double.infinity,
                child: CustomBtnAuth(
                    btnText: "13".tr,
                    onPressed: () {
                      controller.goToLogin();
                    },
                  ),
              ),
              
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: CustomBtnAuth(
                  btnText: "22".tr,
                  onPressed: () {
                    controller.goToSignup();
                  },
                ),
              ),
              const SizedBox(height: 100),
              CustonInkBtn(inkTextBtn: "32".tr),
            ],
          ),
      ),
      );
    
  }
}
