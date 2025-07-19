
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  final List<Map<String, String>> news = [
    {'title': 'Bitcoin franchit les 66 000 USD', 'source': 'CryptoPanic'},
    {'title': 'Ethereum 2.0 bientôt en testnet final', 'source': 'Cointelegraph'},
    {'title': 'Solana lance un nouveau programme DeFi', 'source': 'Twitter'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Actualités Crypto")),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(news[index]['title']!),
            subtitle: Text("Source : ${news[index]['source']}"),
            leading: Icon(Icons.fiber_new, color: Colors.orange),
          );
        },
      ),
    );
  }
}
