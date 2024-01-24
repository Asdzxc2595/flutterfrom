import 'package:flutter/material.dart';

class MorenumCalf extends StatelessWidget {
  const MorenumCalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
