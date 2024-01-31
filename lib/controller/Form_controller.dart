import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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
  var selectedimg = ''.obs;
  var selectedsize = ''.obs;

  var sex = false.obs;
  var inputcow = false.obs;
  var Inputbreed = false.obs;

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

  void sexcow() {
    sex.value = !sex.value;
    print(sex.value);
    //Get.forceAppUpdate();
  }

  void morenumcow() {}
  void InputCow() {
    inputcow.value = !inputcow.value;
  }

  void InputBreed() {
    Inputbreed.value = !Inputbreed.value;
  }

  void getImages(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedimg.value = pickedFile.path;
      selectedsize.value =
          ((File(selectedimg.value)).lengthSync() / 1024 / 1024)
                  .toStringAsFixed(2) +
              "mb";
    } else {
      Get.snackbar(('error'), 'no img',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.cyan);
    }
  } 

  
}
