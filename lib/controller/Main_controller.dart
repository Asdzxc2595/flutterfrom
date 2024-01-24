import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var selectedBreed = "".obs;
  void setSelectedBreed(String breed) {
    selectedBreed.value = breed;
  
  }
}
class BirthDate extends GetxController {
  var seledate = DateTime.now().obs;
  @override
  void onInit() {
    super.onInit();
  }
  @override


  void onRedy() {
    super.onReady();
  }
  
  void onclos() {}
    choseDates() async {
    DateTime? picdate = await showDatePicker(
        context: Get.context!,
        initialDate: seledate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
        initialEntryMode: DatePickerEntryMode.input,
        initialDatePickerMode: DatePickerMode.year,
        helpText: 'เลือกวัน',
        cancelText: 'ปิด',
        confirmText: 'โอเคร',
        errorFormatText: 'ใส่วัน',
        errorInvalidText: 'มันผิดเข้าาใจบ่');
        
    if (picdate != null && picdate != seledate.value) {
      seledate.value = picdate;
    }
  }
}
