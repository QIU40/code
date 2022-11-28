import 'package:flutter/material.dart';

class Passenger extends StatefulWidget {
  const Passenger({Key? key}) : super(key: key);

  @override
  State<Passenger> createState() => _Passenger();
}

class _Passenger extends State<Passenger> {
  int passenger = 1;
  final List<String> name = <String>[
    'Alex',
  ];
  final List<int> age = <int>[22];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Column(children: [
        Table(border: TableBorder.all(), children: [
          //Passenger()
          TableRow(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // color: Color.fromARGB(255, 48, 255, 252),
                Text(
                  "Number of Passengers: ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  passenger.toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ]),
          TableRow(children: [Text('Javatpoint')]),
          TableRow(children: [
            Container(
              //margin: EdgeInsets.fromLTRB(70, 0, 10, 0), //<, ^, >, v

              child: ElevatedButton(onPressed: () {}, child: const Text("Add")),
            ),
          ]),
        ])
      ])
    ]);
  }
}
