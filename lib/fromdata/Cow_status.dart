// ignore_for_file: file_names

import 'package:flutter/material.dart';


class CowStatus extends StatefulWidget {
  const CowStatus({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CowStatusState createState() => _CowStatusState();
}

class _CowStatusState extends State<CowStatus> {
  String? selectedValueStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        decoration: const BoxDecoration(),
        child: DropdownButtonFormField<String>(
          validator: (value) {
            if (value ==null ||value.isEmpty){
              return 'กรุณาเลื อกสถานะ';
            }
          },
          value: selectedValueStatus,
          decoration: const InputDecoration(
            label: Text('เลือกสถานะ'),
            border: OutlineInputBorder(),
          ),
          items: ['ลูโค', 'พ่อโค', 'โรงเรือน 3'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedValueStatus = value;
            });
          },
        ),
      ),
    );
  }
}
