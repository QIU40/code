// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'passenger.dart';
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
      children: <Widget>[
        Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 80, 0), //<, ^, >, v
              height: 50.0,
              child: TextField(
                onChanged: (value) {},
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Pickup",
                    hintText: "Pickup Location",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),
            /**/ Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  //margin: EdgeInsets.fromLTRB(70, 0, 10, 0), //<, ^, >, v

                  child: ElevatedButton(
                      onPressed: swapValues, child: const Text("swap")),
                ),
              ],
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.fromLTRB(10, 0, 80, 0),
              child: TextField(
                onChanged: (value) {},
                controller: editingController2,
                decoration: InputDecoration(
                    labelText: "Dropoff",
                    hintText: "Dropoff Location",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),
          ],
        ),

        //Data Picker Method Needed soon.
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: swapValues,
            child: const Text("Search"),
          ),
        ),

        Container(margin: EdgeInsets.fromLTRB(0, 20, 0, 0), child: Passenger()),
      ],
    );
  }
}
