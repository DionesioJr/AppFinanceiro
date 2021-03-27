import 'package:flutter/material.dart';

class TransationForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  TransationForm(this.onSubmit);

  @override
  _TransationFormState createState() => _TransationFormState();
}

class _TransationFormState extends State<TransationForm> {
  final titleController = TextEditingController();

  final valueController = TextEditingController();

  _submitForm() {
    final String titulo = titleController.text;
    final double valor = double.tryParse(valueController.text) ?? 0.00;

    if (titulo.isEmpty || valor <= 0) {
      return false;
    }

    widget.onSubmit(titulo, valor);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: this.titleController,
              decoration: InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: this.valueController,
              decoration: InputDecoration(labelText: 'Valor (R\$)'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) {
                _submitForm();
              },
            ),
            FlatButton(
              child: Text("Nova Dispesa"),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                _submitForm();
              },
            )
          ],
        ),
      ),
    );
  }
}
