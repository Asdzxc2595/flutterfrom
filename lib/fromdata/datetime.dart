import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatetimeC extends StatelessWidget {
  const DatetimeC({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController dateInput = TextEditingController();
    DateTime DateW = DateTime.now();
    var label = "เลือกวันนะ";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        readOnly: true,
        controller: dateInput,
        onTap: () async {
          final DateTime? dateTime = await showDatePicker(
            context: context,
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            initialDate: DateW,
            initialDatePickerMode: DatePickerMode.year,
            confirmText: 'เยส',
            helpText: 'เลือกวัน',
            cancelText: 'ปิด',
            errorFormatText: 'ใส่วัน',
            errorInvalidText: 'ไม่ใส่วัน',
            fieldLabelText: 'กรองวัน',
            fieldHintText: 'วัน/เดือน/ปี',
            builder: (context, child) {
              return Theme(data: ThemeData.light(), child: child!);
            },
          );

              if (dateTime != null) {
                DateW = dateTime;
                
                print(DateW);
                print(dateTime);
                
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(DateW);
                  dateInput.text = formattedDate;
              }
            },
            decoration: const InputDecoration(
                label: Row(
                  children: [
                    Text("วัน"),
                  ],
                ),
                border: OutlineInputBorder())));
  }
}
