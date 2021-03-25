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
        id: '0000002',
        titulo: 'Conta de Luz',
        value: 78.50,
        date: DateTime.now()),
    Transation(
        id: '0000003', titulo: 'Almoço', value: 12.50, date: DateTime.now()),
    Transation(
        id: '0000002', titulo: 'Sobremesa', value: 4.00, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransationList(_transation),
        TransationForm(),
      ],
    );
  }
}
