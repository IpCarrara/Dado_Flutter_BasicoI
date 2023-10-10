import 'dart:math';

import 'package:flutter/material.dart';

class RolarDado extends StatefulWidget {
  const RolarDado({super.key});

  @override
  State<RolarDado> createState() {
    return _RolarDadoState();
  }
}

class _RolarDadoState extends State<RolarDado> {
  var dadoAtivo = 'assets/images/dice-5.png';

  void rolarDado() {
    var rolar = Random().nextInt(6) + 1;
    setState(() {
      dadoAtivo = 'assets/images/dice-$rolar.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          dadoAtivo,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rolarDado,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 225, 233, 0),
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const Text(
            'Rolar Dado',
          ),
        ),
      ],
    );
  }
}
