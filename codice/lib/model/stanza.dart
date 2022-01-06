import 'package:codice/database/oggettiDB.dart';
import 'package:codice/functions/creazione_partita.dart';
import 'package:codice/model/combattimento.dart';
import 'package:codice/model/oggetto.dart';
import 'package:flutter/material.dart';
import 'azione.dart';

abstract class Stanza {
  // L'index della stanza viene fornito quando viene creata la mappa al momento della creazine dell'istanza partita.
  late int index;
  final List<String> dialogoStanza;
  final List<Image> immagini;
  final List<Azione> azioniDisponibili;
  late Oggetto oggettoStanza;
  // Se la stanza non ha un combattimento la lista è vuota
  List<Combattimento> combattimento = [];
  // Quando la stanza viene creata viene deciso se ci saranno combattimenti o meno
  final bool isCombattimentoPresente;

  Stanza({
    required this.azioniDisponibili,
    required this.dialogoStanza,
    required this.immagini,
    required this.isCombattimentoPresente,
  }) {
    // prendo un oggetto a caso da quelli disponibili nel database
    oggettoStanza = OggettiDB().listaOggetti[0];
  }

  // Quando una stanza viene inserita nella mappa, gli viene associato l'index della posizione e vengono creati gli eventuali
  // combattimenti
  void setIndex(int idx) {
    index = idx;
    if (isCombattimentoPresente) {
      combattimento.add(CreazionePartita().creaCombattimento(index));
    }
  }
}
