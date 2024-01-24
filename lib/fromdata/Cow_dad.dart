import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/Form_controller.dart';

class Cowdad extends StatelessWidget {
  const Cowdad({super.key});

  @override
  Widget build(BuildContext context) {
    FormController controller = Get.put(FormController());
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: TextFormField(
        decoration: const InputDecoration(
            label: Text("พ่อพันธ์ุ/น้ำเชื้อ"), border: OutlineInputBorder()),
        keyboardType: TextInputType.text,
        controller: controller.cowdadController,
        onSaved: (value) {
          controller.cowdad = value!;
        },
        validator: (value) {
          return controller.validatecowdad(value!);
        },
      ),
    );
  }
}
