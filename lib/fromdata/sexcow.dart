import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/Form_controller.dart';

class Sexcow extends StatelessWidget {
  const Sexcow({super.key});
  @override
  Widget build(BuildContext context) {
    FormController controller = Get.put(FormController());
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 2, 3, 0),
      child: Row(
        children: [
          Center(child: Obx(() {
            return InkWell(
              onTap: () {
                controller.sexcow();
              },
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: controller.sex.value ? Colors.grey : Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male_outlined),
                      Text('data'),
                    ],
                  ),
                ),
              ),
            );
          })),
          const SizedBox(
            width: 10,
          ),
          Center(child: Obx(() {
            return InkWell(
              onTap: () {
                controller.sexcow();
              },
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: controller.sex.value ? Colors.pink: Colors.grey,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male_outlined),
                      Text('data'),
                    ],
                  ),
                ),
              ),
            );
          })),
        ],
      ),
    );
  }
}
