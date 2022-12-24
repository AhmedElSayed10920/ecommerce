import 'package:ecommerce/Core/Constant/routes.dart';
import 'package:ecommerce/Core/middleware/mymiddleware.dart';
import 'package:ecommerce/View/Screens/Auth/LogOrSignIn.dart';
import 'package:ecommerce/View/Screens/Auth/forgetpassword.dart';
import 'package:ecommerce/View/Screens/Auth/login.dart';
import 'package:ecommerce/View/Screens/Auth/resetpassword.dart';
import 'package:ecommerce/View/Screens/Auth/signup.dart';
import 'package:ecommerce/View/Screens/Auth/sucessresetpass.dart';
import 'package:ecommerce/View/Screens/Auth/sucesssignup.dart';
import 'package:ecommerce/View/Screens/Auth/verifycode.dart';
import 'package:ecommerce/View/Screens/Auth/verifycodesignup.dart';
import 'package:ecommerce/View/Screens/OnBoarding.dart';
import 'package:ecommerce/View/Screens/language.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.loginOrsignup, page: () => const Start()),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signup, page: () => const Signup()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPass()),
  GetPage(name: AppRoutes.sucessSignup, page: () => const SuccesSignup()),
  GetPage(name: AppRoutes.sucessResetPass, page: () => const SuccesResetPass()),
  GetPage(
      name: AppRoutes.verifyCodeSignup, page: () => const VerifyCodeSignup()),
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
];
