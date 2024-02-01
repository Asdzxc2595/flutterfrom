// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Cowmat extends StatefulWidget {
  const Cowmat({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CowmatState createState() => _CowmatState();
}

class _CowmatState extends State<Cowmat> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        decoration: const BoxDecoration(),
        child: DropdownButtonFormField<String>(
          value: selectedValue,
          decoration: const InputDecoration(
            label: Text('เลือกฝูง'),border: OutlineInputBorder(),
          ),
          items: ['ฝูง 1', 'ฝูง 2','ฝูง 3'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
