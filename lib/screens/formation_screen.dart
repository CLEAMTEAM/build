
import 'package:flutter/material.dart';

class FormationScreen extends StatelessWidget {
  final List<String> levels = [
    "🔰 Débutant : Comprendre les cryptos",
    "📊 Intermédiaire : Lecture de graphiques",
    "🚀 Avancé : Stratégies de trading"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Parcours de Formation")),
      body: ListView.builder(
        itemCount: levels.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(levels[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
