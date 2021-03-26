import 'dart:math';
import 'package:flutter/material.dart';
import 'package:app_financeiro/components/transation_form.dart';
import 'package:app_financeiro/components/transation_list.dart';
import 'package:app_financeiro/models/transation.dart';

class TransationUsers extends StatefulWidget {
  @override
  _TransationUsersState createState() => _TransationUsersState();
}

class _TransationUsersState extends State<TransationUsers> {
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransationForm(_addTransation),
        TransationList(_transation),
      ],
    );
  }
}
