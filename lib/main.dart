import 'package:flutter/material.dart';
import 'ejercicios/ejercicio1.dart';
import 'ejercicios/ejercicio2.dart';
import 'ejercicios/ejercicio3.dart';
import 'ejercicios/ejercicio4.dart';
import 'ejercicios/ejercicio5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú de Ejercicios',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuPrincipal(),
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Ejercicios'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ejercicio1()),
                ),
                child: const Text('1. Mostrar la tabla de caracteres ASCII'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ejercicio2()),
                ),
                child: const Text('2. Calcular el factorial de un número'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ejercicio3()),
                ),
                child: const Text('3. Hallar el MCD de dos números'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ejercicio4()),
                ),
                child: const Text('4. Factorización de un número entero'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ejercicio5()),
                ),
                child: const Text('5. Mostrar números primos entre 3 y 32767'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
