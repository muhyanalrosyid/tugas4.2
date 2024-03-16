import "package:flutter/material.dart";
import "package:get/get.dart";

class CaseController extends GetxController {
  var text = 'halo semuanya'.obs;
  var bgSnackbar = const Color.fromARGB(255, 0, 77, 150).obs;
  var warnaTeksSnackbar = Colors.white.obs;

  void ubahTeks() {
    if (text.value == text.value.toUpperCase()) {
      text.value = text.value.toLowerCase();
    } else {
      text.value = text.value.toUpperCase();
    }
  }

  void ubahWarna() {
    if (bgSnackbar.value == const Color.fromARGB(255, 0, 77, 150)) {
      bgSnackbar.value = const Color.fromARGB(255, 234, 234, 234);
      warnaTeksSnackbar.value = Colors.black;
    } else {
      bgSnackbar.value = const Color.fromARGB(255, 0, 77, 150);
      warnaTeksSnackbar.value = Colors.white;
    }
  }
}
