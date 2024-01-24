import 'package:flutter/material.dart';

class NumCow extends StatefulWidget {
  const NumCow({Key? key}) : super(key: key);

  @override
  _NumCowState createState() => _NumCowState();
}

class _NumCowState extends State<NumCow> {
  String? numidcow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: DropdownButtonFormField<String>(
        hint: const Text('เบอร์ลูกโคเพิ่มเติม'),
        value: numidcow,
        onChanged: (String? value) {
          setState(() {
            numidcow = value;
          });
        },
        items: const ['NID', 'RDID', 'EIEIE'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: [
                Text(value),
                const Spacer(
                  flex: 1,
                ),
                const Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'eiei'),
                ))
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
