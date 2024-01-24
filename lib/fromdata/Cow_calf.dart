import 'package:flutter/material.dart';
import 'package:flutterfrom/controller/Form_controller.dart';
import 'package:get/get.dart';

class Cowcalf extends StatelessWidget {
  const Cowcalf({super.key});

  @override
  Widget build(BuildContext context) {
    FormController controller =Get.put(FormController());
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
        child: TextFormField(
          decoration: const InputDecoration(
              label: Text("ชื่อลูกโค"), border: OutlineInputBorder()),keyboardType: TextInputType.text,controller: controller.cowcalfController,
              onSaved: (value){
                controller.cowcalf =(value!);
              },validator: (value){
                return controller.validatecowrcalf(value!);
              },
        ));
  }
}
