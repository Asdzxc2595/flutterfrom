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
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
                        child: Icon(Icons.female_rounded,color: Colors.pink ,)),
                      Text('เพศเมีย',style: TextStyle(color:controller.sex.value ? Color.fromARGB(255, 90, 90, 90) : Colors.white  ),),
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
                  color: controller.sex.value ? Colors.pink: Color.fromARGB(255, 180, 180, 180),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(50)),
                        child: const Icon(Icons.male_outlined,color: Colors.blue,)),
                        SizedBox(width: 5,),
                        Text('เพศผู้',style: TextStyle(color: controller.sex.value ? Colors.white : Color.fromARGB(255, 90, 90, 90)),),
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
