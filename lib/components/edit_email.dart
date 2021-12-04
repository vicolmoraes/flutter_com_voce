import 'package:flutter/material.dart';

class EditEmail extends StatefulWidget {

  TextEditingController title = TextEditingController();

  EditEmail(TextEditingController s) {
    title = s;
  }

  @override
  State<StatefulWidget> createState() {
    return EditEmailState(title);
  }
}

class EditEmailState extends State<EditEmail> {
  TextEditingController text = TextEditingController();
EditEmailState(TextEditingController title) {
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                )),
          ],
        ),
      ),
    );
  }
}
