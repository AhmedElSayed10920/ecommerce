import 'package:ecommerce/Controller/AuthController/resetpass_controller.dart';
import 'package:ecommerce/Core/Functions/validinput.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomBodyText.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomButtonAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTextFormAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTitleText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPassControllerImp controller = Get.put(ResetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:Text(
          "33".tr,
          style:const TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.all(20),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(height: 40),
              CustomTitleText(title: "34".tr),
              CustomBodyText(
                bodyText: "35".tr,
              ),
              const SizedBox(height: 30),
              CustomTextFormAuth(
                  hinttext: "36".tr,
                  iconData: Icons.lock_outline,
                  labeltext:  "37".tr,
                  obscure: true,
                  valid: (val) {
                    return validInput(val!,5 , 30, "password");
                  },
                  mycontroller: controller.password),
              const SizedBox(height: 20),
              CustomTextFormAuth(
                  hinttext:  "38".tr,
                  iconData: Icons.lock_outline,
                  labeltext:  "39".tr,
                  obscure: true,
                  valid: (val) {
                    return validInput(val!,5 , 30, "password");
                  },
                  mycontroller: controller.rePassword),
              const SizedBox(height: 30),
              CustomBtnAuth(
                btnText: "40".tr,
                onPressed: () {
                  controller.goToSucessResetPass();
                },
              ),
              const SizedBox(height: 50),
              
            ],
          ),
        ),
      ),
    );
  }
}
