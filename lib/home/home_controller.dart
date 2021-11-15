import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:growther/dialog_helper/dialog_helper_controller.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  List<Widget> widgets = [
    const SizedBox(
      height: 30,
    ),
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final loader = document.getElementById('loader');
    if (loader != null) loader.remove();
  }

  void addWidgets() {
    //print('$textEditingValue');
    widgets.add(Row(children: [
      Text(
        '${DialogHelperController.to.textEditingValue}',
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
      const SizedBox(
        width: 30,
      ),
      if (DialogHelperController.to.radioGroupValue == 1) //add text field
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
                labelText:
                    'Enter ${DialogHelperController.to.textEditingValue}'),
            onChanged: (value) {},
          ),
        ),
      if (DialogHelperController.to.radioGroupValue == 2) //add radio buttons
        if (DialogHelperController.to.radioGroupValue == 3) //add check boxes
          if (DialogHelperController.to.radioGroupValue == 4) //add date time
            IconButton(
                onPressed: () {
                  DatePickerDialog(
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    lastDate: DateTime.now(),
                  );
                },
                icon: const Icon(Icons.date_range_outlined)),
      const SizedBox(
        width: 20,
      ),
      const Spacer(),
      IconButton(
        onPressed: () {
          //removeWidget(index);
        },
        icon: const Icon(Icons.remove_circle),
        color: Colors.red,
      ),
    ]));

    update();
  }

  void removeWidget(int index) {
    if (index != null) {
      widgets.removeAt(index);
    }
  }
}
