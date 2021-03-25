import 'package:app_financeiro/models/transation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Dispesas Pessoais"),
      ),
      body: Column(
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
          Column(
            // criando uma lista
            children: _transation.map((transation) {
              return Card(
                elevation: 5,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'R\$ ' + transation.value.toStringAsFixed(2),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black87),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 2)),
                      padding: EdgeInsets.all(8),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transation.titulo,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        Text(
                          DateFormat('d MMM y').format(transation.date),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              );
              // exibindo a lista
            }).toList(),
          ),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(labelText: 'Título'),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: InputDecoration(labelText: 'Valor (R\$)'),
                  ),
                  FlatButton(
                    child: Text("Nova Dispesa"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      print(titleController.text);
                      print(valueController.text);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
