// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Cowhouse extends StatefulWidget {
  const Cowhouse({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CowhouseState createState() => _CowhouseState();
}

class _CowhouseState extends State<Cowhouse> {
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
            label: Text('เลือกโรงเรือน'),border: OutlineInputBorder(),
          ),
          items: ['โรงเรือน 1', 'โรงเรือน 2','โรง3'].map((String value) {
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
