// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:flutterfrom/controller/Form_controller.dart';
// import 'package:get/get.dart';

class Cowmat extends StatefulWidget {
  const Cowmat({Key? key}) : super(key: key);

  @override
  _CowmatState createState() => _CowmatState();
}

class _CowmatState extends State<Cowmat> {
  String? selectedValuemat;
  //final FormController controller = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        child: DropdownButtonFormField<String>(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'กรุณาเลือกฝูง';
            }
          },
          value: selectedValuemat,
          decoration: const InputDecoration(
            label: Text('เลือกฝูง'),
            border: OutlineInputBorder(),
          ),
          items: ['ฝูง 1', 'ฝูง 2', 'ฝูง 3'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedValuemat = value;
            });
          },
        ),
      ),
    );
  }
}
