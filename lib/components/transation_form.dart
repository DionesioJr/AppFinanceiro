import 'package:flutter/material.dart';

class TransationForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final void Function(String, double) onSubmit;

  TransationForm(this.onSubmit);

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
            ),
            FlatButton(
              child: Text("Nova Dispesa"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                final String titulo = titleController.text;
                final double valor =
                    double.tryParse(valueController.text) ?? 0.00;

                onSubmit(titulo, valor);
              },
            )
          ],
        ),
      ),
    );
  }
}
