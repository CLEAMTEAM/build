
import 'package:flutter/material.dart';

class ChartScreen extends StatelessWidget {
  final String cryptoName;

  ChartScreen({required this.cryptoName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Analyse : \$cryptoName')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("📊 Graphique pour $cryptoName", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text("🔍 RSI: 55 | MACD: +ve | Tendance: Haussière"),
            SizedBox(height: 20),
            Text("✅ Signal: Acheter maintenant", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
