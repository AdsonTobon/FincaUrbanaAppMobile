import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40,),
          const Text('Formulario Ingreso Activo Fijo'),
          const SizedBox(height: 10,),
          _inputEnterName(),
          const SizedBox(height: 10,),
          _inputEnterDescription()
        ],
      ),
    );
  }

  Container _inputEnterName() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          decoration: const InputDecoration(border: InputBorder.none,
          hintText: 'Nombre'),
        ));
  }

  Container _inputEnterDescription() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          decoration: const InputDecoration(
              border: InputBorder.none, hintText: 'Descripción'),
        ));
  }
}
