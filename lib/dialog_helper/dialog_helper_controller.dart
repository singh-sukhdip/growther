import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:growther/home/home_controller.dart';

class DialogHelperController extends GetxController {
  static DialogHelperController get to => Get.find();
  TextEditingController? textEditingController;
  String? textEditingValue;
  bool radioValue = false;
  int radioGroupValue = -1;
  bool showRadioButtonsDetails = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    textEditingController = TextEditingController();
    textEditingValue = '';
  }

  // void addWidgets() {
  //   //print('$textEditingValue');
  //   HomeController.to.widgets.add(Text('$textEditingValue'));
  //   update();
  // }

  void changeRadioButtonValue(int val) {
    radioGroupValue = val;
    if (val == 2)
      showRadioButtonsDetails = true;
    else
      showRadioButtonsDetails = false;
    update();
  }
}
