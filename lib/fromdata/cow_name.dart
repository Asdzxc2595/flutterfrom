import 'package:flutter/material.dart';
import 'package:flutterfrom/main.dart';
import 'package:get/get.dart';

import '../controller/Form_controller.dart';
  void main() => runApp(const MyApp());
class Cowmom extends StatelessWidget {
  const Cowmom({super.key});

  @override
  Widget build(BuildContext context) {
    FormController controller = Get.put(FormController());
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: TextFormField(
        decoration: const InputDecoration(
          label: Text("แม่โคที่คลอด"),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
        controller: controller.cowmomController,
        onSaved: (value) {
          controller.cowmom = value!;
        },
        validator: (value) {
          return controller.validatecowmom(value!);
        },
      ),
    );
  }
}
