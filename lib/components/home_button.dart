import 'package:flutter/material.dart';
import 'package:ola_mundo/models/home_button_model.dart';
import 'package:ola_mundo/utils/utils.dart';

class HomeButton extends StatefulWidget {
  HomeButtonModel? title;

  HomeButton(HomeButtonModel? s) {
    title = s;
  }

  @override
  State<StatefulWidget> createState() {
    return HomeButtonState(title);
  }
}

class HomeButtonState extends State<HomeButton> {
  int counter = 0;
  HomeButtonModel title =
      HomeButtonModel(title: "", url: "", icon: Icons.directions_bus);

  HomeButtonState(HomeButtonModel? t) {
    if (t != null) {
      title = t;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        height: 50,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.grey, width: 1.0)),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(title.icon, size: 30.0, color: Colors.orange),
                  ),
                  SizedBox(height: 5.0,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child:Text(
                    title.title,
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),),
                ]),
          ),
        ),
        onPressed: () {
          setState(() {
            openUrl(title.url);
          });
        },
      ),
    );

    //margin: const EdgeInsets.all(10.0),
  }
}
