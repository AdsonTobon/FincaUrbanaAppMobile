import 'package:flutter/material.dart';

class GlobalScreen extends StatelessWidget {
   
  const GlobalScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('GlobalScreen'),
      ),
    );
  }
}