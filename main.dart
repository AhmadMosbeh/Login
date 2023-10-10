import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

void main() {
  runApp( accont());
}
 
class accont extends StatefulWidget {
   accont({super.key});

  @override
  State<accont> createState() => _accontState();
}

class _accontState extends State<accont> {
  late bool vaue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LOgin_screen(),
    );
  }
}

