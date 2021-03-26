import 'package:flutter/material.dart';
import 'package:app_financeiro/models/transation.dart';
import 'package:intl/intl.dart';

class TransationList extends StatelessWidget {
  final List<Transation> transation;

  TransationList(this.transation);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // Criando lista de elementos
      child: ListView.builder(
        itemCount: this.transation.length,
        itemBuilder: (ctx, index) {
          final transationList = this.transation[index];

          return Card(
            elevation: 5,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  child: Text(
                    'R\$ ' + transationList.value.toStringAsFixed(2),
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
                      transationList.titulo,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Text(
                      DateFormat('d MMM y H:m').format(transationList.date),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
