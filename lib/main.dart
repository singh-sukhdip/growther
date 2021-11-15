import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:growther/home/home_binding.dart';
import 'package:growther/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Growther',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Muli',
      ),
      getPages: Routes.pages,
      initialRoute: '/home',
      initialBinding: HomeBinding(),
    );
  }
}
