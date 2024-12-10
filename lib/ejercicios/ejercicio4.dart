import 'package:flutter/material.dart';

class Ejercicio4 extends StatelessWidget {
  const Ejercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numController = TextEditingController();

    Map<int, int> factorizar(int n) {
      Map<int, int> factores = {};
      int factor = 2;
      while (n > 1) {
        while (n % factor == 0) {
          factores[factor] = (factores[factor] ?? 0) + 1;
          n ~/= factor;
        }
        factor++;
      }
      return factores;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Factorización de un número entero'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: numController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Ingrese un número entero'),
            ),
            ElevatedButton(
              onPressed: () {
                int num = int.tryParse(numController.text) ?? 0;
                if (num <= 1) {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      content: Text('Por favor, ingrese un número mayor que 1.'),
                    ),
                  );
                  return;
                }

                Map<int, int> factores = factorizar(num);
                String resultado = factores.entries
                    .map((e) => '${e.key}^${e.value}')
                    .join(' × ');

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text('La factorización de $num es: $resultado'),
                  ),
                );
              },
              child: const Text('Factorizar Número'),
            ),
          ],
        ),
      ),
    );
  }
}
