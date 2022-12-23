import 'package:ecommerce/Controller/AuthController/sucess_controller.dart';
import 'package:ecommerce/Core/Constant/color.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomBodyText.dart';
import 'package:ecommerce/View/Widgets/Auth/CustomButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccesSignup extends StatelessWidget {
  const SuccesSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SucessControllerImp controller = Get.put(SucessControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:Text(
          "22".tr,
          style: const  TextStyle(color: Colors.grey),
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
            const SizedBox(height: 40),
            const Icon(Icons.verified_outlined,size: 200,color: AppColor.primaryColor,),
            const SizedBox(height: 20),
            CustomBodyText(bodyText: "45".tr),
            const SizedBox(height: 30),
            CustomBtnAuth(
              btnText: "13".tr,
              onPressed: () {
                controller.goToLogin();
              },
            ),
            const SizedBox(height: 50),
            
          ],
        ),
      ),
    );
  }
}
