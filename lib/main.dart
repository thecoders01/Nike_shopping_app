import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_shopping_app/controller/Manage.dart';
import 'package:nike_shopping_app/views/Homepage.dart';

void main() {
  Get.put(ManageController());
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nike app',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage()
    );
  }
}
