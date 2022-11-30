import 'package:flutter/material.dart';
import 'passengerdetails.dart';

class Passenger extends StatefulWidget {
  const Passenger({Key? key}) : super(key: key);

  @override
  State<Passenger> createState() => _Passenger();
}

class _Passenger extends State<Passenger> {
  int passenger = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
            //Passenger()
            children: [
              Table(
                border: TableBorder.all(),
                children: [
                  //Passenger()
                  TableRow(
                    children: [
                      Row(
                        //Row 1 - Number of Passengers
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 30,
                            child: const Text(
                              "Number of Passengers: ",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            child: Text(
                              passenger.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                  //Row 2 - Passenger Details
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                      height: 250,
                      color: const Color.fromARGB(255, 195, 244, 244),
                      child: const Center(child: PassengerDetails()),
                    ))
                  ]),
            ]),
        Row(
            //Row 3 - Buttons may vary when touching add button
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //margin: EdgeInsets.fromLTRB(70, 0, 10, 0), //<, ^, >, v

                child:
                    ElevatedButton(onPressed: () {}, child: const Text("Add")),
              ),
            ]),
      ],
    );
  }
}
