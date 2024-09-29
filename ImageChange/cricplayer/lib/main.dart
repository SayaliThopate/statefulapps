import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Players',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PlayersApp(),
    );
  }
}

class PlayersApp extends StatefulWidget {
  @override
  State<PlayersApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
  int _counter = 0;
  List<String> playerList = <String>[
    "https://cf-img-a-in.tosshub.com/lingo/itne/images/story/202406/6678fc10d615e-cricketer-smriti-mandhana-makes-history-with-record-runs-in-3-match-odi-series-245439858-16x9.jpg",
    "https://static.toiimg.com/photo/104624341/104624341.jpg",
    "https://img.mensxp.com/media/content/2022/Sep/Virat-Kohli1200_631f2f7b9c647.jpeg",
    "https://hindustantimes.com/static-content/1y/cricket-logos/players/shubman-gill.png",
    "https://images.indianexpress.com/2023/11/APTOPIX_India_Cricket_WCup_55283-6f371.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Players App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              playerList[_counter],
              height: 300,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_counter < playerList.length - 1) {
              _counter++;
            } else {
              _counter = 0;
            }
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
