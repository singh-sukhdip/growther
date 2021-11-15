import 'package:get/get.dart';
import 'package:growther/dialog_helper/dialog_helper_controller.dart';
import 'package:growther/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<DialogHelperController>(() => DialogHelperController());
  }
}
