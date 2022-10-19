import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = 'Gyanendra Singh';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calalog App'),
        ),
        body: Container(
          child:
              Center(child: Text('Welcome to $days days of Flutter by $name')),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
