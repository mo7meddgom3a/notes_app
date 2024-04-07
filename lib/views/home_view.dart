import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes', style: TextStyle(fontSize: 30),),

      ),
      body: Center(
        child: Text('Welcome to Notes!'),
      ),
    );
  }
}
