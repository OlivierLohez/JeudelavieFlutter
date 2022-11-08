import 'package:flutter/material.dart';
import 'menuprincipal.dart';
import 'jeudelavie.dart';
import 'jeudelavietest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeu de la vie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Menu Principal'),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => MyHomePage(title: 'MenuPrincipal'),
        '/route2': (BuildContext context) => Jeudelavie(title: 'Jeu'),
        '/route3': (BuildContext context) =>
            Jeudelavietest(title: 'Jeudelavie2'),
      },
    );
  }
}
