
import 'package:flutter/material.dart';
import 'chart_screen.dart';
import 'graph_interactive_screen.dart';
import 'converter_screen.dart';
import 'quiz_screen.dart';
import 'news_screen.dart';
import 'live_price_screen.dart';
import 'formation_screen.dart';

class HomeScreen extends StatelessWidget {
  final cryptos = [
    {'name': 'Bitcoin', 'symbol': 'BTC', 'price': '66,000 USD'},
    {'name': 'Ethereum', 'symbol': 'ETH', 'price': '3,400 USD'},
    {'name': 'Solana', 'symbol': 'SOL', 'price': '150 USD'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accueil - Crypto Trading')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Bienvenue 👋", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ...cryptos.map((crypto) => Card(
              child: ListTile(
                title: Text(crypto['name']!),
                subtitle: Text("Prix actuel : ${crypto['price']}"),
                trailing: ElevatedButton(
                  child: Text("Graphique"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ChartScreen(cryptoName: crypto['name']!)),
                    );
                  },
                ),
              ),
            )),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("📊 Graphique TradingView"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => GraphInteractiveScreen(cryptoName: 'BTC')));
              },
            ),
            ElevatedButton(
              child: Text("💱 Convertisseur USD ↔ FCFA"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ConverterScreen()));
              },
            ),
            ElevatedButton(
              child: Text("📰 Actualités Crypto"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => NewsScreen()));
              },
            ),
            ElevatedButton(
              child: Text("📈 Prix en temps réel"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => LivePriceScreen()));
              },
            ),
            ElevatedButton(
              child: Text("🎓 Formation guidée"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => FormationScreen()));
              },
            ),
            ElevatedButton(
              child: Text("🧠 Quiz de trading"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => QuizScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
