import 'package:flutter/material.dart';

class Editor extends StatelessWidget {

  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData? icone; // ? -> pode ser nulo

  Editor(  // Construtor da classe, com valores opcionais e required: ({})
      {required this.controlador,
        required this.rotulo,
        required this.dica,
        this.icone,
      });

  @override
  Widget build(BuildContext context) {  // Estrutura do Campo de Texto
    return Padding(
      padding: const EdgeInsets.all(16.0), // define a distância dos elementos
      child: TextField(
        controller: controlador,
        style: const TextStyle(
          fontSize: 24.0, // Padrão é na base 8 (8, 16, 24)
        ),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}