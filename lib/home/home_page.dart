import 'package:flutter/material.dart';

import '../components/home_button.dart';
import '../models/home_button_model.dart';

String title = "Com Você";
double space = 16;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final emailController = TextEditingController();
  List<HomeButtonModel> buttonList = List.of([
    HomeButtonModel(
        title: "todos pela saúde",
        url: "https://www.todospelasaude.org/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "iupp",
        url: "https://www.iupp.com.br/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "Itaú Cultural",
        url: "https://www.itaucultural.org.br/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "leia para uma criança",
        url: "https://www.euleioparaumacrianca.com.br/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "íon Itaú",
        url: "https://ion.itau/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "iti Itaú",
        url: "https://iti.itau/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "Itaú Cinema",
        url: "https://iti.itau/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "avalie sua experiência",
        url: "https://iti.itau/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "conheça as iniciativas",
        url: "https://iti.itau/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "benefícios",
        url: "https://iti.itau/",
        icon: Icons.directions_bus),
    HomeButtonModel(
        title: "produtos",
        url: "https://iti.itau/",
        icon: Icons.directions_bus),
  ]);

  @override
  void initState() {
    super.initState();
    emailController.addListener(printValue);
  }

  void printValue() {
    print("email: ${emailController.text}");
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        childAspectRatio: (3 / 2),
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(buttonList.length, (index) {
          return Container(
            color: Colors.white,
            child: HomeButton(buttonList.elementAt(index)),
          );
        }),
      ),
    );
  }
}
//          color: Colors.yellow.shade50,
