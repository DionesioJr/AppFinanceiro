import 'dart:math';
import 'package:flutter/material.dart';

import 'package:app_financeiro/components/transation_form.dart';
import 'package:app_financeiro/components/transation_list.dart';
import 'package:app_financeiro/models/transation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _transation = [
    Transation(
        id: '0000001',
        titulo: 'Fatura do cartão',
        value: 1023.30,
        date: DateTime.now()),
    Transation(
        id: '0000001',
        titulo: 'Fatura do cartão',
        value: 1023.30,
        date: DateTime.now()),
  ];

  _addTransation(String titulo, double value) {
    final newTransation = Transation(
        id: Random().nextDouble().toString(),
        titulo: titulo,
        value: value,
        date: DateTime.now());

    setState(() {
      _transation.add(newTransation);
    });

    Navigator.of(context).pop();
  }

  _addModalForm(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TransationForm(_addTransation);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas Pessoais"),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                return _addModalForm(context);
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Card(
                child: Text("Grafico"),
                color: Colors.blueGrey,
                elevation: 5,
              ),
            ),
            // TransationUsers(),
            TransationList(_transation),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        tooltip: "Nova despesa",
        child: Icon(Icons.add),
        onPressed: () {
          return _addModalForm(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
