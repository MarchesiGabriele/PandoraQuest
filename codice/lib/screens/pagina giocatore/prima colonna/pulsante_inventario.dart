import 'package:codice/model/partita.dart';
import 'package:codice/model/personaggio.dart';
import 'package:codice/screens/pagina%20giocatore/prima%20colonna/oggetto_list_tile.dart';
import 'package:codice/theme/game_fonts.dart';
import 'package:codice/theme/game_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PulsanteInventario extends StatelessWidget {
  const PulsanteInventario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<Personaggio>(builder: (context, personaggio, _) {
      return SizedBox(
        // dimensioni pulsante
        height: size.height / 8,
        width: size.width / 9,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 5,
            primary: GameTheme.buttonColor,
          ),
          child: Text(
            "Inventario",
            style: GameFonts().hallelujaFont(size: 20),
          ),
          onPressed: () {
            Partita p1 = Provider.of<Partita>(context, listen: false);
            showDialog(
              context: context,
              builder: (context1) {
                return AlertDialog(
                  backgroundColor: GameTheme.primaryColor,
                  content: SizedBox(
                    // Dimensioni Dialog
                    height: size.height / 3,
                    width: size.width / 5,
                    child: Column(
                      children: [
                        Flexible(
                          child: Text(
                            "Il tuo Inventario",
                            style: GameFonts().hallelujaFont(),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: ListView.builder(
                            itemCount: personaggio.listaOggetti.length,
                            itemBuilder: (context1, index) {
                              return OggettoListTile(
                                partita: p1,
                                oggetto: personaggio.listaOggetti[index],
                                personaggio: personaggio,
                                oldContext: context,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      );
    });
  }
}
