import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutterfrom/controller/Form_controller.dart';
import 'package:flutterfrom/fromdata/Cow_calf.dart';
import 'package:flutterfrom/fromdata/Cow_dad.dart';
import 'package:flutterfrom/fromdata/Cow_mom.dart';
import 'package:flutterfrom/fromdata/num_calf.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    BirthDate birthDate = Get.put(BirthDate());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Row(
            children: [
              Icon(Icons.iso_outlined),
              SizedBox(
                child: Text('แจ้งเกิดลูกโค'),
              )
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Container(
                      child:
                          DottedBorder(child: Image.asset("lib/img/cow.jpg")),
                    ))),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.pinkAccent)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text("แม่โคที่คลอด"),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text("พ่อพันธ์ุ/น้ำเชื้อ"),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.pinkAccent)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text("แม่โคที่คลอด"),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: DropdownButtonFormField<String>(
                            hint: const Text('เบอร์ลูกโคเพิ่มเติม'),
                            isExpanded: true,
                            onChanged: (String? value) {},
                            items: const [
                              '',
                              '',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    Text(value),
                                    const Flexible(
                                        child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ))
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                label: Text("ชื่อลูกโค"),
                                border: OutlineInputBorder()),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: TextFormField(
                            onTap: () {
                            birthDate.choseDates();
                            },
                            decoration: InputDecoration(
                              labelText:"data", 
                            ),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
