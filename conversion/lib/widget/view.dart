import 'package:flutter/material.dart';
import 'Convert.dart';
import 'Input.dart';
import 'Result.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;

  final etInput = TextEditingController();

  String _newValue = "Kelvin";
  double _result = 0;
  String changeValue = "";

  List<String> listViewItem = <String>[];

  var listItem = ["Kelvin", "Reamur"];

  get key => null;

  @override
  void dispose() {
    etInput.dispose();
    super.dispose();
  }

  void konversiSuhu() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      if (_newValue == "Kelvin")
        _result = _inputUser + 273;
      else
        _result = (4 / 5) * _inputUser;
    });

    listViewItem.add(_result.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Input(etInput: etInput),
          DropdownButton<String>(
            items: listItem.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: _newValue,
            onChanged: (String? changeValue) {
              setState(() {
                _newValue = changeValue!;
                konversiSuhu();
              });
            },
          ),
          Result(result: _result),
          Convert(konvertHandler: konversiSuhu),
          Container(child: const Text("Riwayat Konversi")),
          Expanded(
            child: ListView(
              children: listViewItem.map((String value) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
