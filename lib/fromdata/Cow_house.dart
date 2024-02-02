// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Cowhouse extends StatefulWidget {
  const Cowhouse({Key? key}) : super(key: key);

  @override
  _CowhouseState createState() => _CowhouseState();
}

class _CowhouseState extends State<Cowhouse> {
  String? selectedValuee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        child: DropdownButtonFormField<String>(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'กรุณาเลือกโรงเรือน';
            }return null;
          },
          value: selectedValuee,
          decoration: const InputDecoration(
            label: Text('เลือกโรงเรือน'),
            border: OutlineInputBorder(),
          ),
          items: ['โรงเรือน 1', 'โรงเรือน 2', 'โรงเรือน 3'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedValuee = value;
            });
          },
        ),
      ),
    );
  }
}
