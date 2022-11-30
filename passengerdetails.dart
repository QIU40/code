import 'package:flutter/material.dart';

class PassengerDetails extends StatefulWidget {
  const PassengerDetails({Key? key}) : super(key: key);

  @override
  State<PassengerDetails> createState() => Details();
}

class Details extends State<PassengerDetails> {
  final List<String> name = <String>[
    'Alex',
    'Alec',
  ];
  final List<int> age = <int>[22, 32];

  TextEditingController nameController = TextEditingController();

  void addItemToList() {
    setState(() {
      name.insert(0, nameController.text);
      age.insert(0, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2, //Same quantity to prevent RangeError
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            margin: EdgeInsets.all(2),
            child: Center(
                child: Text(
              //RangeError (RangeError (index): Invalid value: Only valid value is 0: 1)
              '${name[index]} (${age[index]})',
              style: TextStyle(fontSize: 18),
            )),
          );
        },
      ),
    );
  }
}
