import 'package:flutter/material.dart';
import 'package:app_financeiro/screens/home.dart';

void main() {
  runApp(AppFinanceiro());
}

class AppFinanceiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
