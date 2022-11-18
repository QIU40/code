import 'menuui.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  /**/
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = <Widget>[
    MenuPage(),
    HistoryPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Bookings List',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: Colors.red),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow[70],
        onTap: _onItemTapped,
      ),
    );
  }
}
