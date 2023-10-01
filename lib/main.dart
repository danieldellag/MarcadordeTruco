import 'package:flutter/material.dart';
import 'package:marcador_truco/simples.dart';
import 'package:marcador_truco/complexo.dart';
import 'package:marcador_truco/widgets/botaoTop.dart';

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
        title: Text("Marcador de Truco"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xf2f2f2ff),
          image: DecorationImage(
            opacity: 0.05,
            image: AssetImage("assets/cartas.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: botaoTop(
                  image: 'assets/soma.png',
                  text: 'Simples',
                  color: Colors.orange,
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>simples()));
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: botaoTop(
                  image: 'assets/somatorio.png',
                  text: 'Complexo',
                  color: Colors.orange,
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>complexo()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
