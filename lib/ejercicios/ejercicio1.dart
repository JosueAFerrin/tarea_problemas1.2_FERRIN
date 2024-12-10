import 'package:flutter/material.dart';

class Ejercicio1 extends StatelessWidget {
  const Ejercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla de Caracteres ASCII'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            String asciiTable = '';
            for (int i = 0; i <= 255; i++) {
              asciiTable += '$i: ${String.fromCharCode(i)}\n';
            }
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: SingleChildScrollView(
                  child: Text(asciiTable),
                ),
              ),
            );
          },
          child: const Text('Mostrar Tabla ASCII'),
        ),
      ),
    );
  }
}
