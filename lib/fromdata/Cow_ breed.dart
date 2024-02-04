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
            children: [
              Text(
                'สายพันธ์',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    fontSize: 30),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                        color: controller.Inputbreed.value
                            ? Colors.grey
                            : Colors.blue,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '5 สายพันธุ์',
                              style: TextStyle(color: Colors.white),
                            ),
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
                        color: controller.Inputbreed.value
                            ? Colors.blue
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '8 สายพันธุ์',
                              style: TextStyle(color: Colors.white),
                            ),
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
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.compare_arrows_outlined,
                            color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          'สัดส่วน',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Obx(() {
            return Row(
              children: [
                Text(
                  controller.Inputbreed.value
                      ? '8 สายพันธ์ = 50%'
                      : '5 สายพันธ์ = 50%',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,shadows: RxList()
                  ),
                ),
              ],
            );
          })
        ],
      ), //)
    );
  }
}
