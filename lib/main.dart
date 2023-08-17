import 'package:flutter/material.dart';
import 'package:marcador_truco/simples.dart';
import 'package:marcador_truco/complexo.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador de Truco"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body:
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>simples()));
                  },
                  child: Text("Simples")
                ),
              ),

              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>complexo()));
                    },
                    child: Text("Complexo")
                ),
              ),
            ],
          ),
        )
    );
  }
}