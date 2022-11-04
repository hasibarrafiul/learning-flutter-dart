import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is fun'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          addAutomaticKeepAlives: false,
          children: [
            Container(
              color: Colors.amber,
              height: 500,
              width: 100,
            ),
            Container(
              height: 500,
              width: 100,
              color: Colors.blueGrey,
            ),
            Container(
              height: 500,
              width: 100,
              color: Colors.cyan,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("Pressed");
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.red,
          child: Container(
            color: Colors.green,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
