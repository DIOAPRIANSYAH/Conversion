import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.etInput,
  }) : super(key: key);

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(top: 20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 5, color: Colors.red)),
          hintText: "Masukkan Suhu Dalam Celcius",
          hintStyle: TextStyle(color: Colors.red)),
      textAlign: TextAlign.center,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      controller: etInput,
      keyboardType: TextInputType.number,
    );
  }
}
