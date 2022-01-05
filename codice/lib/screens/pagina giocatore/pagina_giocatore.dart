import 'package:codice/screens/pagina%20giocatore/prima%20colonna/prima_colonna.dart';
import 'package:codice/screens/pagina%20giocatore/seconda%20colonna/seconda_colonna.dart';
import 'package:codice/screens/pagina%20giocatore/terza%20colonna/terza_colonna.dart';
import 'package:flutter/material.dart';

// STRUTTURA PAGINA
//
// La pagina è organizzata in 3 colonne. PrimaColonna, SecondaColonna, TerzaColonna

class PaginaGiocatore extends StatefulWidget {
  const PaginaGiocatore({Key? key}) : super(key: key);

  @override
  _PaginaGiocatoreState createState() => _PaginaGiocatoreState();
}

class _PaginaGiocatoreState extends State<PaginaGiocatore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Expanded(
              child: PrimaColonna(),
            ),
            Expanded(
              flex: 3,
              child: SecondaColonna(),
            ),
            Expanded(
              child: TerzaColonna(),
            ),
          ],
        ),
      ),
    );
  }
}