import 'package:flutter/material.dart';

void main() => runApp(ManCityResultsApp());

class ManCityResultsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Man City Results',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: ManCityResultsScreen(),
    );
  }
}

class ManCityResultsScreen extends StatefulWidget {
  @override
  _ManCityResultsScreenState createState() => _ManCityResultsScreenState();
}

class _ManCityResultsScreenState extends State<ManCityResultsScreen> {
  List<String> games = [
    'Premier League: Man City vs Chelsea',
    'UEFA Champions League: Man City vs PSG',
    'FA Cup: Man City vs Tottenham',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Man City Results'),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(games[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(gameName: games[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final String gameName;

  ResultScreen({required this.gameName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Text(
          'Result for $gameName',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}