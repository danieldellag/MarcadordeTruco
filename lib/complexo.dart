import 'dart:math';

import 'package:flutter/material.dart';
import 'package:marcador_truco/widgets/dialog.dart';
import 'package:marcador_truco/widgets/button.dart';

class complexo extends StatefulWidget {

  @override
  complexoState createState() => complexoState();
}

class complexoState extends State<complexo> {

  int _pontuacaoTimeUm = 0;
  int _pontuacaoTimeDois = 0;

  int somarPontosTimes = 1;

  String botaoTrucoTimeUm = "Truco";
  String botaoTrucoTimeDois = "Truco";

  bool botaoAtivarTrucoTimeUm = true;
  bool botaoAtivarTrucoTimeDois = true;

  bool botaoAtivarFugirTimeUm = false;
  bool botaoAtivarFugirTimeDois = false;

  Color corPadraoUm = Colors.orange;
  Color corPadraoDois = const Color(0xf2f2f2ff);

  List<String> historicoPontuacao = [];

  @override
  Widget build (BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return await showPopDialog();
      },
      child: Scaffold(
        backgroundColor: corPadraoDois,
        appBar: AppBar(
          title: const Text("Marcador de Truco"),
          centerTitle: true,
          backgroundColor: corPadraoUm,
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
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 90),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "TIME 1",
                                          style: TextStyle(
                                              color: corPadraoUm,
                                              fontSize: 40,
                                              fontWeight: FontWeight.w900
                                          ),
                                          textAlign: TextAlign.center,
                                        ),

                                        Text("$_pontuacaoTimeUm",
                                          style: TextStyle(
                                            color: corPadraoUm,
                                            fontSize: 100,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),

                                        // Somar pontos time 1
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                          child: botaoComplexo(
                                            onTap: () {
                                              setState(() {
                                                _pontuacaoTimeUm += somarPontosTimes;
                                                resetButtonValues();
                                                historicoPontuacao.add("T1+");
                                              });
                                            },
                                            text: "+$somarPontosTimes",
                                          ),
                                        ),

                                        // Botão truco time 1
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: botaoComplexo(
                                            onTap: () {
                                              setState(() {
                                                switch(botaoTrucoTimeUm){
                                                  case "Truco":
                                                    somarPontosTimes = 3;
                                                    botaoTrucoTimeDois = "Seis";
                                                    botaoAtivarTrucoTimeDois = true;
                                                  case "Seis":
                                                    somarPontosTimes = 6;
                                                    botaoTrucoTimeDois = "Nove";
                                                    botaoAtivarTrucoTimeDois = true;
                                                  case "Nove":
                                                    somarPontosTimes = 9;
                                                    botaoTrucoTimeDois = "Doze";
                                                    botaoAtivarTrucoTimeDois = true;
                                                  case "Doze":
                                                    somarPontosTimes = 12;
                                                    botaoAtivarTrucoTimeDois = false;
                                                }
                                                botaoAtivarTrucoTimeUm = false;
                                                botaoAtivarFugirTimeUm = false;
                                                botaoAtivarFugirTimeDois = true;
                                              });
                                            },
                                            text: botaoTrucoTimeUm,
                                            activated: botaoAtivarTrucoTimeUm,
                                          ),
                                        ),

                                        // Botão fugir time um
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: botaoComplexo(
                                            onTap: () {
                                              setState(() {
                                                _pontuacaoTimeDois += max(somarPontosTimes-3, 1);
                                                resetButtonValues();
                                              });
                                            },
                                            text: "Fugir",
                                            activated: botaoAtivarFugirTimeUm,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(
                                  height: 300,
                                  child: VerticalDivider(
                                    color: Colors.black26,
                                  )
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "TIME 2",
                                          style: TextStyle(
                                              color: corPadraoUm,
                                              fontSize: 40,
                                              fontWeight: FontWeight.w900
                                          ),
                                          textAlign: TextAlign.center,
                                        ),

                                        Text("$_pontuacaoTimeDois",
                                          style: TextStyle(
                                            color: corPadraoUm,
                                            fontSize: 100,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),

                                        // Somar pontos time dois
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                          child: botaoComplexo(
                                            onTap: () {
                                              setState(() {
                                                _pontuacaoTimeDois += somarPontosTimes;
                                                resetButtonValues();
                                              });
                                            },
                                            text: "+$somarPontosTimes",
                                          ),
                                        ),

                                        // Botão truco time dois
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                          child: botaoComplexo(
                                            onTap: () {
                                              setState(() {
                                                switch(botaoTrucoTimeDois){
                                                  case "Truco":
                                                    somarPontosTimes = 3;
                                                    botaoTrucoTimeUm = "Seis";
                                                    botaoAtivarTrucoTimeUm = true;
                                                  case "Seis":
                                                    somarPontosTimes = 6;
                                                    botaoTrucoTimeUm = "Nove";
                                                    botaoAtivarTrucoTimeUm = true;
                                                  case "Nove":
                                                    somarPontosTimes = 9;
                                                    botaoTrucoTimeUm = "Doze";
                                                    botaoAtivarTrucoTimeUm = true;
                                                  case "Doze":
                                                    somarPontosTimes = 12;
                                                    botaoAtivarTrucoTimeUm = false;
                                                }
                                                botaoAtivarFugirTimeUm = true;
                                                botaoAtivarTrucoTimeDois = false;
                                                botaoAtivarFugirTimeDois = false;
                                              });
                                            },
                                            text: botaoTrucoTimeDois,
                                            activated: botaoAtivarTrucoTimeDois,
                                          ),
                                        ),

                                        // Botão fugir time dois
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                          child: botaoComplexo(
                                            onTap: () {
                                              setState(() {
                                                _pontuacaoTimeUm += max(somarPontosTimes-3, 1);
                                                resetButtonValues();
                                              });
                                            },
                                            text: "Fugir",
                                            activated: botaoAtivarFugirTimeDois,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: botaoComplexo(
                              onTap: () {},
                              text: "Histórico",
                              width: 300,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: botaoComplexo(
                              onTap: () async {
                                bool retornoFunc = await dialogGenerico(context, "Deletar", "Tem certeza que gostaria de zerar a pontuação e deletar o histórico?");

                                if(retornoFunc){
                                  setState(() {
                                    _pontuacaoTimeUm = _pontuacaoTimeDois = 0;
                                    resetButtonValues();
                                  });
                                }
                              },
                              text: "Zerar",
                              width: 300,
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void resetButtonValues(){
    somarPontosTimes = 1;

    botaoTrucoTimeUm = "Truco";
    botaoTrucoTimeDois = "Truco";

    botaoAtivarTrucoTimeUm = true;
    botaoAtivarTrucoTimeDois = true;

    botaoAtivarFugirTimeUm = false;
    botaoAtivarFugirTimeDois = false;
  }

  Future<bool> showPopDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: const Color(0x00000000),
            insetPadding: EdgeInsets.only(left: 5, right: 10, top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Voltar",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Tem certeza que deseja sair?", textAlign: TextAlign.center),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                Navigator.of(context).pop(false);
                              },
                              style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 2.5, color: Colors.grey),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                  backgroundColor: Colors.white,
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                  )
                              ),
                              child: /*Row(
                              children: [*/
                              Text("Não", style: TextStyle(color: Colors.black)),
                              // ],
                            ),
                            ElevatedButton(
                              onPressed: (){
                                Navigator.of(context).pop(true);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
                                  backgroundColor: corPadraoUm,
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                  )
                              ),
                              child: /*Row(
                              children: [*/
                              Text("Sim"),
                              // ],
                            )
                          ]
                      ),
                    ],
                  )
              ),
            ),
          );
        }
    );
  }
}