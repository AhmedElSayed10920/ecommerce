import 'package:ecommerce/Controller/AuthController/singup_controller.dart';
import 'package:ecommerce/Core/Functions/exitappalert.dart';
import 'package:ecommerce/Core/Functions/validinput.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomButtonAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTextFormAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTitleText.dart';
import 'package:ecommerce/View/Widgets/Auth/CustonInkBtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "22".tr,
            style: const TextStyle(color: Colors.grey),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: WillPopScope(
            onWillPop: appExitAlert,
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(20),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    CustomTitleText(title: "14".tr),
                    const SizedBox(height: 20),
                    CustomTextFormAuth(
                        hinttext: "24".tr,
                        iconData: Icons.person,
                        labeltext: "25".tr,
                        obscure: false,
                        valid: (val) {
                          return validInput(val!, 5, 20, "username");
                        },
                        mycontroller: controller.email),
                    const SizedBox(height: 20),
                    CustomTextFormAuth(
                        hinttext: "16".tr,
                        iconData: Icons.email_outlined,
                        labeltext: "17".tr,
                        obscure: false,
                        valid: (val) {
                          return validInput(val!, 10, 100, "email");
                        },
                        mycontroller: controller.email),
                    const SizedBox(height: 20),
                    CustomTextFormAuth(
                        hinttext: "26".tr,
                        iconData: Icons.phone,
                        labeltext: "27".tr,
                        obscure: false,
                        valid: (val) {
                          return validInput(val!, 8, 20, "phone");
                        },
                        mycontroller: controller.email),
                    const SizedBox(height: 20),
                    CustomTextFormAuth(
                        hinttext: "18".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "19".tr,
                        obscure: true,
                        valid: (val) {
                          return validInput(val!, 5, 30, "password");
                        },
                        mycontroller: controller.email),
                    const SizedBox(height: 20),
                    CustomBtnAuth(
                      btnText: "22".tr,
                      onPressed: () {
                        controller.goToCheckEmail();
                      },
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("23".tr),
                        const SizedBox(width: 2),
                        CustonInkBtn(
                          inkTextBtn: "13".tr,
                          onTap: () {
                            controller.gotoLogin();
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
