import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  counter createState() => counter();
}

class counter extends State<CounterScreen> {
  int _counter = 0;

  void _minuseCounter() {
    setState(() {
      _counter++;
    });
  }

  void _pluseCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 13),
      width: 93,
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0xffE7E7E7),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: _pluseCounter,
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            constraints: const BoxConstraints(),
          ),
          Flexible(
            child: Text(
              '$_counter',
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _minuseCounter,
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }
}
