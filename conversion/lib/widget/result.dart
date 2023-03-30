import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
  }) : super(key: key);

  final double result;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      width: 100,
      height: 100,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: const Color.fromARGB(248, 220, 51, 9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.red,
            blurRadius: 4,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          const Text(
            "Hasil",
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
          Text(
            result.toStringAsFixed(1),
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
