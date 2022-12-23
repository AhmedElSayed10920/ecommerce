import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:get/get.dart';

abstract class SucessController extends GetxController {
  goToLogin();
}

class SucessControllerImp extends SucessController {
  
  @override
  goToLogin(){
    Get.offAllNamed(AppRoutes.login);
  }

  
}
