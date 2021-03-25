import 'package:app_financeiro/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppFinanceiro());
}

class AppFinanceiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
