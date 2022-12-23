import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> appExitAlert() {
  Get.defaultDialog(
    title: "تنبيه",
    middleText: "هل تريد الخروج من التطبيق؟",
    confirm: ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("Confirm")),
    cancel: ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("Cancel")),
  );
  return Future.value(true);
}
