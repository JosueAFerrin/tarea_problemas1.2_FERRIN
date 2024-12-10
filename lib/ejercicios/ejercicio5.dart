import 'package:flutter/material.dart';

class Ejercicio5 extends StatelessWidget {
  const Ejercicio5({super.key});

  List<int> obtenerPrimos(int limite) {
    List<int> primos = [];
    for (int i = 3; i <= limite; i++) {
      bool esPrimo = true;
      for (int j = 2; j * j <= i; j++) {
        if (i % j == 0) {
          esPrimo = false;
          break;
        }
      }
      if (esPrimo) primos.add(i);
    }
    return primos;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Números Primos entre 3 y 32,767'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            List<int> primos = obtenerPrimos(32767);
            String resultado = primos.join(', ');

            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: SingleChildScrollView(
                  child: Text(resultado),
                ),
              ),
            );
          },
          child: const Text('Mostrar Números Primos'),
        ),
      ),
    );
  }
}
