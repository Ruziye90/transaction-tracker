import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:transaction_tracker/screen/login_screen.dart';


void main() {
  runApp(
      GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage()
      )
  );
}