import 'package:flutter/material.dart';

class EditPass extends StatefulWidget {
  TextEditingController title = TextEditingController();

  EditPass(TextEditingController s) {
    title = s;
  }
  @override
  State<StatefulWidget> createState() {
    return EditPassState(title);
  }
}

class EditPassState extends State<EditPass> {
  TextEditingController text = TextEditingController();
  EditPassState(TextEditingController title) {
    text = title;
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                )),
          ],
        ),
      ),
    );
  }
}
