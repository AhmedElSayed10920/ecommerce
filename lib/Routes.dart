import 'package:ecommerce/Core/Constant/routes.dart';
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
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoutes.loginOrsignup : (Context) => const Start(),
  AppRoutes.login : (Context) => const Login(),
  AppRoutes.signup : (Context) => const Signup(),
  AppRoutes.forgetPassword : (Context) => const ForgetPassword(),
  AppRoutes.verifyCode : (Context) => const VerifyCode(),
  AppRoutes.resetPassword : (Context) => const ResetPass(),
  AppRoutes.sucessSignup : (Context) => const SuccesSignup(),
  AppRoutes.sucessResetPass : (Context) => const SuccesResetPass(),
  AppRoutes.verifyCodeSignup : (Context) => const VerifyCodeSignup(),
  //OnBoarding
  AppRoutes.onBoarding : (Context) => const OnBoarding(),
};