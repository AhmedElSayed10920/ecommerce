import 'package:ecommerce/Controller/AuthController/verifycode_controller.dart';
import 'package:ecommerce/Core/Constant/color.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomBodyText.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomButtonAuth.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomTitleText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "41".tr,
          style:const TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            CustomTitleText(title:  "42".tr),
            CustomBodyText(
              bodyText: "43".tr,
            ),
            const SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 5,
              fieldWidth: 50,
              borderColor: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            const SizedBox(height: 30,),
            CustomBtnAuth(
              btnText: "40".tr,
              onPressed: () {
                controller.goToResetPass();
              },
            ),
          ],
        ),
      ),
    );
  }
}
