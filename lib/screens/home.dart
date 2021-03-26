import 'package:app_financeiro/components/transation_users.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas Pessoais"),
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
            TransationUsers(),
          ],
        ),
      ),
    );
  }
}
