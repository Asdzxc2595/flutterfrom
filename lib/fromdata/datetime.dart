import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DatetimeC extends StatelessWidget {
  const DatetimeC({super.key});
  int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController dateInput = TextEditingController();
    DateTime DateW = DateTime.now();
    var label = "เลือกวันนะ";
    var daycount = '0'.obs;

    // final firstdate = DateTime(2000);
    // final lastdate = DateTime.now();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            readOnly: true,
            controller: dateInput,
            onTap: () async {
              final DateTime? dateTime = await showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime.now(),
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
                daycount.value =
                    daysBetween(dateTime, DateTime.now()).toString();
                print(DateW);
                print(dateTime);
                String formattedDate = DateFormat('yyyy-MM-dd').format(DateW);
                dateInput.text = formattedDate;
                print(daycount);
              }
            },
            decoration: const InputDecoration(
              label: Row(
                children: [
                  Text("วันเกิดโค"),
                ],
              ),
              border: OutlineInputBorder(),suffixIcon: Icon(Icons.arrow_circle_down),
            ),
          ),
          Row(
            children: [
              Obx(() => Text(
                    "อายุ ${daycount.value} วัน",
                    style: TextStyle(fontSize: 10),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
