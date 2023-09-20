import 'package:flutter/material.dart';

const corDeFundo = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 252, 181, 181),
      Colors.white,
    ],
  ),
);

const corDeFundoDetalhes = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 247, 225, 225),
      Colors.white,
    ],
  ),
);

const textoDetalhes = TextStyle(
  fontFamily: 'Cookie',
  fontSize: 24,
);
