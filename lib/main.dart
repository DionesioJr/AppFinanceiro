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
    return Center(
      child: Text("Versão inicial"),
    );
  }
}
