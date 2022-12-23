import 'package:ecommerce/Controller/AuthController/forgetpass_controller.dart';
import 'package:ecommerce/Core/Functions/validinput.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomBodyText.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomButtonAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTextFormAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTitleText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPassControllerImp controller = Get.put(ForgetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:Text(
          "28".tr,
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
          key:controller.formstate ,
          child: ListView(
            children: [
              CustomTitleText(title: "29".tr),
              CustomBodyText(
                bodyText:
                    "30".tr,
              ),
              const SizedBox(height: 30),
              CustomTextFormAuth(
                  hinttext: "16".tr,
                  iconData: Icons.email_outlined,
                  labeltext: "17".tr,
                  obscure: false,
                  valid: (val) {
                    return validInput(val!,10 , 100, "email");
                  },
                  mycontroller: controller.email),
              const SizedBox(height: 20),
              CustomBtnAuth(
                btnText: "31".tr,
                onPressed: () {
                  controller.goToVerifyCode();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
