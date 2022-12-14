// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:softedge_in_out/screens/get_data.dart';
import 'package:softedge_in_out/screens/login_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInScreen(),
    );
  }
}
