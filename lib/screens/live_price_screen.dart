
import 'package:flutter/material.dart';

class LivePriceScreen extends StatelessWidget {
  final prices = {
    'BTC': '66,100',
    'ETH': '3,450',
    'SOL': '152'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Prix Crypto (Live API)")),
      body: ListView(
        children: prices.entries.map((e) => ListTile(
          title: Text(e.key),
          subtitle: Text("\$${e.value}"),
          trailing: Icon(Icons.show_chart),
        )).toList(),
      ),
    );
  }
}
