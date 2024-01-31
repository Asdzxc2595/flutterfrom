import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/Form_controller.dart';

class Cowbreed extends StatelessWidget {
  const Cowbreed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FormController controller = Get.put(FormController());

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 3, 0),
      
      //  child: Align(
      //   alignment: Alignment.centerRight,//ชิดขวา
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Obx(() {
                    return InkWell(
                      onTap: () {
                        controller.InputBreed();
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: controller.Inputbreed.value ? Colors.grey : Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male_outlined),
                              Text('5 สายพันธุ์'),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(width: 10),
                Center(
                  child: Obx(() {
                    return InkWell(
                      onTap: () {
                        controller.InputBreed();
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: controller.Inputbreed.value ? Colors.pink : Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male_outlined),
                              Text('8 สายพันธุ์'),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(width: 10),
                Center(
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.compare_arrows_outlined), Text('eiei')],
                      ),
                      
                    ),
                  ),
                ),
              ],
            ),
            //SizedBox(), Row(children: [Align(alignment: Alignment.bottomCenter,)],)
          ],
        ),//)
    );
  }
}
