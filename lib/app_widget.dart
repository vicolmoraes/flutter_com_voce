import 'package:flutter/material.dart';
import 'package:ola_mundo/home/home_page.dart';
import 'package:ola_mundo/login/login_page.dart';

//StatelessWidget é imutavel
class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

