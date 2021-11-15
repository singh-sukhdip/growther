import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:growther/dialog_helper/dialog_helper.dart';
import 'package:growther/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        //elevation: 0,

        title: const Text(
          'Create Employee Dashboard',
          //style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          DialogHelper.showDialog();
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.yellow[500],
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
          child: Center(
            child: GetBuilder<HomeController>(
              //init: MyController(),
              //initState: (_) {},
              builder: (_) {
                return _formBody();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _formBody() {
    return Form(
        child: Column(
      children: HomeController.to.widgets,
    ));
  }
}
