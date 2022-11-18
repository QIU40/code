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
    return Scaffold(
      body: Container(
        width: 300,
        height: 200,
        child: Column(
          children: <Widget>[
            Positioned(
              top: 110,
              left: 10,
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
            Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: swapValues,
                child: const Text("swap"),
              ),
            ),
            Positioned(
              top: 110,
              left: 10,
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
      ),
    );
  }
}
