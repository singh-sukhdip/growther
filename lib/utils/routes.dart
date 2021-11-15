import 'package:get/get.dart';
import 'package:growther/home/home_screen.dart';

class Routes {
  static final pages = [
    GetPage(name: '/home', page: () => const HomeScreen()),
  ];
}
