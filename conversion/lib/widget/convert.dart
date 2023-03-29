import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  final Function konvertHandler;

  const Convert({
    Key? key,
    required this.konvertHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 230),
        width: 200,
        height: 30,
        child: TextButton(
            onPressed: () {
              konvertHandler();
            },
            style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(248, 220, 51, 9)),
            child: const Text(
              "Konversi Suhu",
              style: TextStyle(
                color: Colors.white,
              ),
            )));
  }
}
