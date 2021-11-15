import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:growther/dialog_helper/dialog_helper_controller.dart';
import 'package:growther/home/home_controller.dart';

class DialogHelper {
  static void showDialog() {
    Get.defaultDialog(
      title: 'Add Form fields',
      contentPadding: const EdgeInsets.all(10.0),
      content: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Add label'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  controller: DialogHelperController.to.textEditingController,
                  decoration: const InputDecoration(
                      //icon: Icon(Icons.person),
                      //hintText: 'add label name',
                      labelText: 'Enter label name'),
                  onChanged: (value) {
                    DialogHelperController.to.textEditingValue = value;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GetBuilder<DialogHelperController>(builder: (_) {
            return RadioListTile(
                title: const Text('Text Field'),
                activeColor: Colors.green,
                value: 1,
                groupValue: DialogHelperController.to.radioGroupValue,
                onChanged: (val) {
                  DialogHelperController.to.changeRadioButtonValue(val as int);
                });
          }),
          GetBuilder<DialogHelperController>(builder: (_) {
            return RadioListTile(
                title: const Text('Radio buttons'),
                activeColor: Colors.green,
                value: 2,
                groupValue: DialogHelperController.to.radioGroupValue,
                onChanged: (val) {
                  DialogHelperController.to.changeRadioButtonValue(val as int);
                });
          }),
          GetBuilder<DialogHelperController>(builder: (_) {
            return Visibility(
              visible: DialogHelperController.to.showRadioButtonsDetails,
              child: Text('hello'),
            );
          }),
          GetBuilder<DialogHelperController>(builder: (_) {
            return RadioListTile(
                title: const Text('Check Boxes'),
                activeColor: Colors.green,
                value: 3,
                groupValue: DialogHelperController.to.radioGroupValue,
                onChanged: (val) {
                  DialogHelperController.to.changeRadioButtonValue(val as int);
                });
          }),
          GetBuilder<DialogHelperController>(builder: (_) {
            return RadioListTile(
                title: const Text('Date Time'),
                activeColor: Colors.green,
                value: 4,
                groupValue: DialogHelperController.to.radioGroupValue,
                onChanged: (val) {
                  DialogHelperController.to.changeRadioButtonValue(val as int);
                });
          }),
        ],
      ),
      onCancel: () {},
      onConfirm: () {
        HomeController.to.addWidgets();
        Get.back();
      },
    );
  }

  //show loading
  static void showLoading([String? message]) {
    Get.dialog(
        Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                message ?? 'Loading...',
                style: Get.textTheme.headline5,
              ),
            ],
          ),
        ),
        barrierDismissible: false);
  }

  //hide loading
  static void hideLoading() {
    if (Get.isDialogOpen != null) Get.back();
  }
}
