import 'package:finca_urbana_app/routes/screens.dart';
import 'package:flutter/material.dart';

class GeneralScreen extends StatelessWidget {
   
  const GeneralScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FormScreen(),
    );
  }
}