import 'package:flutter/material.dart';

void main() {
  runApp(AppFinanceiro());
}

class AppFinanceiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dispesas Pessoais"),
      ),
      body: Center(
        child: Text("Versão inicial"),
      ),
    );
  }
}
