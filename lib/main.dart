import 'package:ecommerce/Core/Localization/changelocal.dart';
import 'package:ecommerce/Core/Localization/translation.dart';
import 'package:ecommerce/Core/Services/services.dart';
import 'package:ecommerce/Routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      title: 'E-Commerce',
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.language,
      theme: controller.appTheme,
      getPages: routes,
    );
  }
}
