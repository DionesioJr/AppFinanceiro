import 'package:flutter/foundation.dart';

class Transation {
  final String id;
  final String titulo;
  final double value;
  final DateTime date;

  Transation(
      {@required this.id,
      @required this.titulo,
      @required this.value,
      @required this.date});
}
