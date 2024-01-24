import 'package:flutter/material.dart';
import 'package:flutterfrom/controller/Form_controller.dart';
import 'package:get/get.dart';

class NumCalf extends StatelessWidget {
  const NumCalf({super.key});

  @override
  Widget build(BuildContext context) {
    FormController controller = Get.put(FormController());
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: TextFormField(
        decoration: const InputDecoration(
            label: Text("เบอร์ลูกโค"), border: OutlineInputBorder()),
        keyboardType: TextInputType.text,
        controller: controller.numbercalfController,
        onSaved: (value) {
          controller.numbercalf = value!;
        },
        validator: (value) {
          return controller.validatenumbercalf(value!);
        },
      ),
    );
  }
}
