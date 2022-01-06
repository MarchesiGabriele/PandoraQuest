import 'package:codice/model/partita.dart';
import 'package:codice/screens/pagina%20finale/pagina_finale.dart';
import 'package:codice/screens/pagina%20giocatore/pagina_giocatore.dart';
import 'package:codice/screens/pagina%20home/pagina_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// flutter run -d chrome --web-renderer html
// flutter run --profile

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ingswproject",
      home: PaginaHome(),
    );
  }
}
