import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Controlador(),
  ));
}

class Controlador extends StatefulWidget {
  const Controlador({super.key});

  @override
  State<Controlador> createState() => _ControladorState();
}

class _ControladorState extends State<Controlador> {
  int cont = 0;
  void increment() {
    setState(() {
      cont++;
    });
  }

  void decrement() {
    setState(() {
      if (cont > 0) cont--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("imagens/restaurant.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pode Entrar!",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              cont.toString(),
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: increment,
                  child: Text("Entrou"),
                  style: TextButton.styleFrom(
                    fixedSize: Size(100, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 64,
                ),
                TextButton(
                  onPressed: decrement,
                  child: Text("Saiu"),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      fixedSize: Size(100, 100),
                      backgroundColor: Colors.white),
                )
              ],
            ),
            Text(
              "Dimitri Moreira",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
