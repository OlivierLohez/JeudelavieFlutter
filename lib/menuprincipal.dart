import 'package:flutter/material.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
//  State<Ecranprincipal> createState() => _Ecranprincipal();
//}
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => menuprincipal())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class menuprincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu Principal")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Entrez dans le jeu',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            ElevatedButton(
              child: Text("Jeu de la vie"),
              onPressed: () {
                Navigator.pushNamed(context, '/route2');
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            ElevatedButton(
              child: Text("Jeu de la vie test"),
              onPressed: () {
                Navigator.pushNamed(context, '/route3');
              },
            )
          ],
        ),
      ),
    );
  }
}
