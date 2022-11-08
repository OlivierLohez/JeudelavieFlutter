import 'package:flutter/material.dart';
import 'jdlv.dart';

class Jeudelavietest extends StatefulWidget {
  const Jeudelavietest({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Jeudelavietest> createState() => Jeudelavie2();
}

class Jeudelavie2 extends State<Jeudelavietest> {
  JDLV jdlv = new JDLV();
  Color case1 = Colors.red;
  Color case2 = Colors.red;
  Color case3 = Colors.red;
  Color case4 = Colors.red;
  Color case5 = Colors.red;
  Color case6 = Colors.red;
  Color case7 = Colors.red;
  Color case8 = Colors.red;
  Color case9 = Colors.red;
  Color case10 = Colors.red;

  void changementdecouleur() {
    setState(() {
      if (case1 == Colors.red) {
        case1 = Colors.blue;
      } else {
        case1 = Colors.red;
      }
    });
  }

  void changementdecouleur2() {
    setState(() {
      if (case2 == Colors.red) {
        case2 = Colors.blue;
      } else {
        case2 = Colors.red;
      }
    });
  }

  void changementdecouleur3() {
    setState(() {
      if (case3 == Colors.red) {
        case3 = Colors.blue;
      } else {
        case3 = Colors.red;
      }
    });
  }

  void changementdecouleur4() {
    setState(() {
      if (case4 == Colors.red) {
        case4 = Colors.blue;
      } else {
        case4 = Colors.red;
      }
    });
  }

  void changementdecouleur5() {
    setState(() {
      if (case5 == Colors.red) {
        case5 = Colors.blue;
      } else {
        case5 = Colors.red;
      }
    });
  }

  void changementdecouleur6() {
    setState(() {
      if (case6 == Colors.red) {
        case6 = Colors.blue;
      } else {
        case6 = Colors.red;
      }
    });
  }

  void changementdecouleur7() {
    setState(() {
      if (case7 == Colors.red) {
        case7 = Colors.blue;
      } else {
        case7 = Colors.red;
      }
    });
  }

  void changementdecouleur8() {
    setState(() {
      if (case8 == Colors.red) {
        case8 = Colors.blue;
      } else {
        case8 = Colors.red;
      }
    });
  }

  void changementdecouleur9() {
    setState(() {
      if (case9 == Colors.red) {
        case9 = Colors.blue;
      } else {
        case9 = Colors.red;
      }
    });
  }

  void changementdecouleur10() {
    setState(() {
      if (case10 == Colors.red) {
        case10 = Colors.blue;
      } else {
        case10 = Colors.red;
      }
    });
  }

  void restart() {
    case1 = Colors.blue;
    case2 = Colors.blue;
    case3 = Colors.blue;
    case4 = Colors.blue;
    case5 = Colors.blue;
    case6 = Colors.blue;
    case7 = Colors.blue;
    case8 = Colors.blue;
    case9 = Colors.blue;
    case10 = Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jeu de la vie"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Column(
          children: [
            //you can add widgets here also

            for (int y = 0; y <= 9; y++) ...[
              Row(children: <Widget>[
                for (int x = 0; x <= 9; x++) ...[
                  Expanded(
                    child: TextButton(
                      onPressed: () => jdlv.changementdecouleur(x, y),
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => jdlv.couleurdelacase(y, x)),
                        shape: MaterialStateProperty.resolveWith(
                          (states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                        ),
                      ),
                    ),
                  ),
                ]
              ]),
            ],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: jdlv.restart, label: const Text('Reinitialisation')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
