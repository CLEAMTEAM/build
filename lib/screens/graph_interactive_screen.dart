
import 'package:flutter/material.dart';

class GraphInteractiveScreen extends StatelessWidget {
  final String cryptoName;

  GraphInteractiveScreen({required this.cryptoName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Graphique TradingView : \$cryptoName')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("🔄 Chargement du graphique $cryptoName...", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text("📈 (Graphique interactif TradingView à intégrer ici)"),
          ],
        ),
      ),
    );
  }
}
