import 'package:flutter/material.dart';
import 'package:app_financeiro/models/transation.dart';
import 'package:intl/intl.dart';

class TransationList extends StatelessWidget {
  final List<Transation> transation;

  TransationList(this.transation);

  @override
  Widget build(BuildContext context) {
    return Column(
      // criando uma lista
      children: transation.map((transation) {
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
    );
  }
}
