
import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {
  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  double usdValue = 0.0;
  double rate = 610.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Convertisseur USD ↔ FCFA")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Montant en USD"),
              keyboardType: TextInputType.number,
              onChanged: (val) {
                setState(() => usdValue = double.tryParse(val) ?? 0.0);
              },
            ),
            SizedBox(height: 20),
            Text("💱 Montant en FCFA : ${(usdValue * rate).toStringAsFixed(0)}", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
