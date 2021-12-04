import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ola_mundo/components/edit_pass.dart';

import '../components/edit_email.dart';
import '../components/home_button.dart';
import '../home/home_page.dart';

String title = "Com Você";
String buttonName = "Iti Itaú";
double space = 16;

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(printValue);
    passController.addListener(printValue);
  }

  void printValue() {
    print("email: ${emailController.text}");
    print("senha: ${passController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: space,
              ),
              EditEmail(emailController),
              SizedBox(
                height: space,
              ),
              EditPass(passController),
              SizedBox(
                height: space,
              ),
              RaisedButton(
                child: Text("Entrar",
                    style: new TextStyle(fontSize: 30.0, color: Colors.black)),
                onPressed: () {
                  if (emailController.text == "vivi@gmail.com" &&
                      passController.text == "123") {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
              )
            ],
          ),
        ));
  }
}
