import 'dart:math';
import 'package:flutter/material.dart';
import 'package:marcador_truco/widgets/dialog.dart';
import 'package:marcador_truco/widgets/button.dart';
import 'package:marcador_truco/models/history.dart';

class complexo extends StatefulWidget {

  @override
  complexoState createState() => complexoState();
}

class complexoState extends State<complexo> {

  int _pontuacaoTimeUm = 0;
  int _pontuacaoTimeDois = 0;

  int somarPontosTimes = 1;
  int ultimaAcao = 0;

  Color corPadraoUm = Colors.orange;
  Color corPadraoDois = const Color(0xf2f2f2ff);

  List<History> historicoPontuacao = [History(pontuacaoTimeUm: 0, pontuacaoTimeDois: 0, somarPontosTimes: 1, ultimaAcao: 0)];

  String getTrucoText(){

    switch(somarPontosTimes){
      case 1:
        return "Truco";
      case 3:
        return "Seis";
      case 6:
        return "Nove";
      case 9:
        return "Doze";
      default:
        return "DOze";
    }
  }
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
                                              historicoPontuacao.add(
                                                History(
                                                  pontuacaoTimeUm: _pontuacaoTimeUm,
                                                  pontuacaoTimeDois: _pontuacaoTimeDois,
                                                  somarPontosTimes: somarPontosTimes,
                                                  ultimaAcao: ultimaAcao
                                                )
                                              );
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
                                              somarPontosTimes = somarPontosTimes == 1 ? 3 : somarPontosTimes + 3;

                                              ultimaAcao = 1;

                                              historicoPontuacao.add(
                                                  History(
                                                      pontuacaoTimeUm: _pontuacaoTimeUm,
                                                      pontuacaoTimeDois: _pontuacaoTimeDois,
                                                      somarPontosTimes: somarPontosTimes,
                                                      ultimaAcao: ultimaAcao
                                                  )
                                              );
                                            });
                                          },
                                          text: getTrucoText(),
                                          activated: ultimaAcao != 1 && somarPontosTimes < 12,
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

                                              historicoPontuacao.add(
                                                  History(
                                                      pontuacaoTimeUm: _pontuacaoTimeUm,
                                                      pontuacaoTimeDois: _pontuacaoTimeDois,
                                                      somarPontosTimes: somarPontosTimes,
                                                      ultimaAcao: ultimaAcao
                                                  )
                                              );
                                            });
                                          },
                                          text: "Fugir",
                                          activated: ultimaAcao == 2,
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

                                              historicoPontuacao.add(
                                                History(
                                                  pontuacaoTimeUm: _pontuacaoTimeUm,
                                                  pontuacaoTimeDois: _pontuacaoTimeDois,
                                                  somarPontosTimes: somarPontosTimes,
                                                  ultimaAcao: ultimaAcao
                                                )
                                              );
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
                                              somarPontosTimes = somarPontosTimes == 1 ? 3 : somarPontosTimes + 3;

                                              ultimaAcao = 2;

                                              historicoPontuacao.add(
                                                  History(
                                                      pontuacaoTimeUm: _pontuacaoTimeUm,
                                                      pontuacaoTimeDois: _pontuacaoTimeDois,
                                                      somarPontosTimes: somarPontosTimes,
                                                      ultimaAcao: ultimaAcao
                                                  )
                                              );
                                            });
                                          },
                                          text: getTrucoText(),
                                          activated: ultimaAcao != 2 && somarPontosTimes < 12,
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

                                              historicoPontuacao.add(
                                                  History(
                                                      pontuacaoTimeUm: _pontuacaoTimeUm,
                                                      pontuacaoTimeDois: _pontuacaoTimeDois,
                                                      somarPontosTimes: somarPontosTimes,
                                                      ultimaAcao: ultimaAcao
                                                  )
                                              );
                                            });
                                          },
                                          text: "Fugir",
                                          activated: ultimaAcao == 1,
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
                                 historicoPontuacao = [History(pontuacaoTimeUm: 0, pontuacaoTimeDois: 0, somarPontosTimes: 1, ultimaAcao: 0)];
                               });
                              }
                            },
                            text: "Zerar",
                            width: 300,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: botaoComplexo(
                            onTap: () {
                              if(historicoPontuacao.length > 1){
                                historicoPontuacao.removeLast();
                                setState(() {
                                  _pontuacaoTimeUm = historicoPontuacao.last.pontuacaoTimeUm;
                                  _pontuacaoTimeDois = historicoPontuacao.last.pontuacaoTimeDois;
                                  somarPontosTimes = historicoPontuacao.last.somarPontosTimes;
                                  ultimaAcao = historicoPontuacao.last.ultimaAcao;
                                });
                              }
                            },
                            text: "Desfazer",
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
    ultimaAcao = 0;
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