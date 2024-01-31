import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/Form_controller.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    FormController controller = Get.put(FormController());
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: TextFormField(
        decoration: const InputDecoration(
            label: Text("สถานะนำเข้า"), border: OutlineInputBorder(),suffixIcon: Icon(Icons.arrow_circle_down),),
        keyboardType: TextInputType.text,
        // controller: controller.cowdadController,
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
