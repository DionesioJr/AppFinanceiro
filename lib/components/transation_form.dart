import 'package:flutter/material.dart';

class TransationForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
                print(titleController.text);
                print(valueController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
