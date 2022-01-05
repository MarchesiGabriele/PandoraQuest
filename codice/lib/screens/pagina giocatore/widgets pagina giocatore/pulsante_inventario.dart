import 'package:flutter/material.dart';

class PulsanteInventario extends StatelessWidget {
  const PulsanteInventario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 8,
      width: size.width / 13,
      child: ElevatedButton(
        child: const Text("Inventario"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Container(
                    height: size.height / 3,
                    width: size.width / 5,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(index.toString()),
                          );
                        }),
                  ),
                );
              });
        },
      ),
    );
  }
}
