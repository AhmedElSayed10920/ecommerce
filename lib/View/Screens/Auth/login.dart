import 'package:ecommerce/Controller/AuthController/login_controller.dart';
import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:ecommerce/Core/Functions/exitappalert.dart';
import 'package:ecommerce/Core/Functions/validinput.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomBodyText.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomButtonAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTextFormAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTitleText.dart';
import 'package:ecommerce/View/Widgets/Auth/CustonInkBtn.dart';
import 'package:ecommerce/View/Widgets/Auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "13".tr,
            style: const TextStyle(color: Colors.grey),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: WillPopScope(
            onWillPop: appExitAlert,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const Logo(),
                    CustomTitleText(title: "14".tr),
                    CustomBodyText(
                      bodyText: "15".tr,
                    ),
                    const SizedBox(height: 30),
                    CustomTextFormAuth(
                        hinttext: "16".tr,
                        iconData: Icons.email_outlined,
                        labeltext: "17".tr,
                        valid: (val) {
                          return validInput(val!, 10, 100, "email");
                        },
                        obscure: false,
                        mycontroller: controller.email),
                    const SizedBox(height: 20),
                    GetBuilder<LoginControllerImp>(
                      builder: (controller) => CustomTextFormAuth(
                          hinttext: "18".tr,
                          iconData: Icons.lock_outline,
                          labeltext: "19".tr,
                          obscure: controller.obscureText,
                          eye: InkWell(
                              onTap: (() {
                                controller.isShowPassword();
                              }),
                              child: controller.obscureText == true
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off)),
                          valid: (val) {
                            return validInput(val!, 8, 30, "password");
                          },
                          mycontroller: controller.password),
                    ),
                    const SizedBox(height: 20),
                    CustonInkBtn(
                      inkTextBtn: "20".tr,
                      onTap: () {
                        Get.toNamed(AppRoutes.forgetPassword);
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomBtnAuth(
                      btnText: "13".tr,
                      onPressed: () {
                        controller.login();
                      },
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("21".tr),
                        const SizedBox(width: 2),
                        CustonInkBtn(
                          inkTextBtn: "22".tr,
                          onTap: () {
                            controller.goToSignup();
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
