// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  var editingController = TextEditingController();
  var editingController2 = TextEditingController();

  swapValues() {
    final temp = editingController.text;
    setState(() {
      editingController.text = editingController2.text;
      editingController2.text = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Column(children: [
          TextField(
            onChanged: (value) {},
            controller: editingController,
            decoration: InputDecoration(
                labelText: "Pickup",
                hintText: "Pickup Location",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)))),
          ),
          Align(
            alignment: Alignment.bottomRight,
            heightFactor: 1.0,
            child: ElevatedButton(
                onPressed: swapValues, child: const Text("swap")),
          ),
          const SizedBox(height: 15),
          TextField(
            onChanged: (value) {},
            controller: editingController2,
            decoration: InputDecoration(
                labelText: "Dropoff",
                hintText: "Dropoff Location",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)))),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: swapValues,
            child: const Text("Search"),
          ),
        ),
      ],
    );
  }
}
