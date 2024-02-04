import 'package:flutter/material.dart';

class MorenumCalf extends StatefulWidget {
  @override
  _MorenumCalfState createState() => _MorenumCalfState();
}

class _MorenumCalfState extends State<MorenumCalf> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  bool isTextField1Visible = false;
  bool isTextField2Visible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              isTextField1Visible = true;
              isTextField2Visible = true;
            });
          },
          child: const Text('Show TextFields'),
        ),
        Visibility(
          visible: isTextField1Visible,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller1,
              decoration: const InputDecoration(labelText: 'a2',border: OutlineInputBorder()),
            ),
          ),
        ),
        Visibility(
          visible: isTextField2Visible,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller2,
              decoration: const InputDecoration(labelText: 'a1',border: OutlineInputBorder()),
            ),
          ),
        ),
      ],
    );
  }
}
  