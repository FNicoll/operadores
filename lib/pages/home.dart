import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter -= 2;
    });
  }

  void _multiplierCounter() {
    setState(() {
      _counter *= 2;
    });
  }

  void _divisorCounter() {
    setState(() {
      _counter /= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Operadores Basicos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Contador:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Sumar',
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 3),
                  Text('2'),
                ],
              ),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Restar',
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.remove),
                  SizedBox(width: 3),
                  Text('2'),
                ],
              ),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: _multiplierCounter,
              tooltip: 'Multiplicar',
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.close),
                  SizedBox(width: 3),
                  Text('2'),
                ],
              ),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: _divisorCounter,
              tooltip: 'Dividir',
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.close),
                  SizedBox(width: 3),
                  Text('1/2'),
                ],
              ),
            ),
          ],
        ));
  }
}
