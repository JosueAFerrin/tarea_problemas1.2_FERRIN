import 'package:flutter/material.dart';

class Ejercicio2 extends StatelessWidget {
  const Ejercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular Factorial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Ingrese un número'),
            ),
            ElevatedButton(
              onPressed: () {
                int number = int.tryParse(controller.text) ?? 0;
                int factorial = 1;
                for (int i = 1; i <= number; i++) {
                  factorial *= i;
                }
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text('El factorial de $number es $factorial'),
                  ),
                );
              },
              child: const Text('Calcular Factorial'),
            ),
          ],
        ),
      ),
    );
  }
}
