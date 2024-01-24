import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  final GlobalKey<FormState> loginformkey = GlobalKey<FormState>();
  late TextEditingController cowmomController,
      cowdadController,
      numbercalfController,
      cowcalfController;
  var dateRange = DateTime.now().obs;
  var cowmom = '';
  var cowdad = '';
  var numbercalf = '';
  var cowcalf = '';

  @override
  void onInit() {
    super.onInit();
    cowmomController = TextEditingController();
    cowdadController = TextEditingController();
    numbercalfController = TextEditingController();
    cowcalfController = TextEditingController();
  }


  @override
  void onClose() {
    cowmomController = TextEditingController();
    cowdadController = TextEditingController();
    numbercalfController = TextEditingController();
    cowcalfController = TextEditingController();
  }

  String? validatecowmom(String value) {
    if (value.length < 3) {
      return "ใส่ความ";
    }
    return null;
  }

  String? validatecowdad(String value) {
    if (value.length <= 3) {
      return "ใส่ความ";
    }
    return null;
  }

  String? validatenumbercalf(String value) {
    if (value.length <= 3) {
      return "ใส่ความ";
    }
    return null;
  }

  String? validatecowrcalf(String value) {
    if (value.length <= 3) {
      return "ใส่ความ";
    }
    return null;
  }

  void Check() {
    final isValid = loginformkey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginformkey.currentState!.save();
  }

}
