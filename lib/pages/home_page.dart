import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Gyanendra Singh';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calalog App'),
      ),
      body: Center(child: Text('Welcome to Home Demo Page designed by $name')),
      drawer: const Drawer(),
    );
  }
}
