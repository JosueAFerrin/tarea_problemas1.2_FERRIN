import 'package:flutter/material.dart';

class Ejercicio3 extends StatelessWidget {
  const Ejercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController num1Controller = TextEditingController();
    TextEditingController num2Controller = TextEditingController();

    int calcularMCD(int a, int b) {
      while (b != 0) {
        int temp = b;
        b = a % b;
        a = temp;
      }
      return a;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hallar el MCD de dos números'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Ingrese el primer número'),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Ingrese el segundo número'),
            ),
            ElevatedButton(
              onPressed: () {
                int num1 = int.tryParse(num1Controller.text) ?? 0;
                int num2 = int.tryParse(num2Controller.text) ?? 0;
                int mcd = calcularMCD(num1, num2);

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text('El MCD de $num1 y $num2 es $mcd'),
                  ),
                );
              },
              child: const Text('Calcular MCD'),
            ),
          ],
        ),
      ),
    );
  }
}
