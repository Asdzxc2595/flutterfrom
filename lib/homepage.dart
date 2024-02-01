import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutterfrom/controller/Form_controller.dart';
import 'package:flutterfrom/fromdata/Cow_%20breed.dart';
import 'package:flutterfrom/fromdata/Cow_calf.dart';
import 'package:flutterfrom/fromdata/Cow_dad.dart';
import 'package:flutterfrom/fromdata/Cow_house.dart';
import 'package:flutterfrom/fromdata/Cow_mat.dart';
import 'package:flutterfrom/fromdata/Cow_mom.dart';
import 'package:flutterfrom/fromdata/Cow_status.dart';
import 'package:flutterfrom/fromdata/datetime.dart';
import 'package:flutterfrom/fromdata/more_num_calf.dart';
import 'package:flutterfrom/fromdata/num_calf.dart';
import 'package:flutterfrom/fromdata/sexcow.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    FormController controller = Get.put(FormController());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Row(
            children: [
              Icon(Icons.diversity_1),
              SizedBox(
                child: Text('แจ้งเกิดลูกโค'),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.loginformkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          child: DottedBorder(
                              child: Image.asset("lib/img/cow.jpg")),
                        ),SizedBox(height: 5,),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              controller.getImages(ImageSource.gallery);
                            },
                            child: Text('galley'),
                          ),
                        ), SizedBox(height: 5),
                            Center(
                            child: ElevatedButton(
                              onPressed: () {
                                controller.getImages(ImageSource.camera);
                              },
                              child: Text('camera'),
                            ),),
                        
                      ],
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
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Cowmom(),
                          Cowdad(),
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
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          NumCalf(),
                          MorenumCalf(),
                          Cowcalf(),
                          DatetimeC(),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  'ประเภทโค',
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ],
                          ),
                          Sexcow(),
                          SizedBox(
                            height: 10,
                          ),
                          Status(),

                          //                 Center(
                          //                    child: SizedBox(
                          //                     width: double.infinity,
                          //                     height: 30,
                          //                         child: ElevatedButton(
                          //                             onPressed: () {
                          //                               controller.InputCow();
                          //                             },
                          //                             style: const ButtonStyle(
                          //                                 backgroundColor:
                          //                                     MaterialStatePropertyAll<Color>(
                          //                                         Colors.red)),
                          //                             child: const Text(
                          //                               "ถัดไป",
                          //                               style: TextStyle(color: Colors.black),selectionColor: Colors.amber,
                          //                             ),
                          // //                             ), if (showTextFormField)
                          // // TextFormField(
                          // //   controller: _textController,
                          // //   // Other TextFormField properties...
                          //  ),
                          //                   ),

                          //                 ),
                          Cowbreed(),

                          Cowhouse(),
                          Cowmat(),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        controller.Check();
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red)),
                      child: const Text(
                        "ถัดไป",
                        style: TextStyle(color: Colors.black),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
