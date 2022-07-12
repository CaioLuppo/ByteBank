// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'screens/transferencia/lista.dart';  // Resolve as dependências do código

void main() => runApp(ByteBankApp());  // Função principal que executa o app

class ByteBankApp extends StatelessWidget {  // Função do app, que traz o principal

  @override  // Usamos override pois estamos "reescrevendo" a classe Widget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ByteBank - By: Caio Luppo",  // Título do aplicativo
      theme: ThemeData(  // Tema do aplicativo, colorScheme -> tema geral
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,  // Cor primária
        ).copyWith(
          secondary: Colors.blueAccent[700],  // Cor secundária
        ),
        buttonTheme: ButtonThemeData(  // Tema dos botões
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(  // Tema dos ElevatedButtons (nova versão)
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent[700],
          ),
        )
      ),
      home: ListaTransferencias(  // Onde o aplicativo vai iniciar
      ),
    );
  }
}
