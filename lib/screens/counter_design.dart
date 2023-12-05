import 'package:flutter/material.dart';

void main() => runApp(const CounterDesign());

class CounterDesign extends StatefulWidget {
  const CounterDesign({super.key});

  @override
  State<CounterDesign> createState() => _CounterDesignState();
}

class _CounterDesignState extends State<CounterDesign> {
  int _n = 0;
  double _amt = 0.0;

  void add() {
    setState(() {
      if (_n < 99) {
        _n++;
        _amt = _amt + 9.0;
      }
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) {
        _n--;
        _amt = _amt - 9.0;
      }
      if (_amt < 0.0) {
        _amt = 0.0;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 155,
          decoration: BoxDecoration(
            color: const Color(0xFFDCF7EE),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  minus();
                },
                icon: const Icon(
                  Icons.remove_circle,
                  color: Color(0xFF006A5C),
                ),
              ),
              Text(
                '$_n',
                style: const TextStyle(
                  fontSize: 30,
                  color: Color(0xFF000000),
                ),
              ),
              IconButton(
                onPressed: () {
                  add();
                },
                icon: const Icon(
                  Icons.add_circle,
                  color: Color(0xFF006A5C),
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ),
        const SizedBox(
          width: 80,
        ),
        Text(
          '\$${_amt.toStringAsFixed(1)} MXN', // Muestra el valor con 2 decimales
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}
