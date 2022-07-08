// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies

import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ByteBank - By: Caio Luppo",
      home: Scaffold(
        body: FormularioTransferencias(),
      ),
    );
  }
}

class FormularioTransferencias extends StatelessWidget {

  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Criando Transferência"),),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),  // define a distância dos elementos
              child: TextField(
                controller: _controladorCampoNumeroConta,
                style: TextStyle(
                  fontSize: 24.0,  // Padrão é na base 8 (8, 16, 24)
                ),
                decoration: InputDecoration(
                  labelText: "Número da conta",
                  hintText: "0000",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),  // define a distância dos elementos
              child: TextField(
                controller: _controladorCampoValor,
                style: TextStyle(
                  fontSize: 24.0,  // Padrão é na base 8 (8, 16, 24)
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: "Valor",
                  hintText: "0.00",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: Text("Confirmar"),
              onPressed: () {
                final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
                final double? valor = double.tryParse(_controladorCampoValor.text);

                if(numeroConta != null && valor != null){
                  final transferenciaCriada = Transferencia(valor, numeroConta);

                }
              },
            ),
          ],
        )
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ItemTransferencia(Transferencia(100.0, 1000)),
          ItemTransferencia(Transferencia(100.0, 1000)),
          ItemTransferencia(Transferencia(100.0, 1000)),
          ItemTransferencia(Transferencia(100.0, 1000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Transferências"),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta}';
  }
}
