import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> appExitAlert() {
  Get.defaultDialog(
    title: "48".tr,
    middleText: "47".tr,
    confirm: ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child:Text("40".tr)),
    cancel: ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child:Text("49".tr)),
  );
  return Future.value(true);
}
