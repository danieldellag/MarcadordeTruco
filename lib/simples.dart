import 'package:flutter/material.dart';

class simples extends StatefulWidget {

  @override
  simplesState createState() => simplesState();
}

class simplesState extends State<simples> {

  int _pontuacaoTimeUm = 0, _pontuacaoTimeDois = 0;

  @override
  Widget build (BuildContext context) {

    Color corPadraoUm = Colors.orange;
    Color corPadraoDois = const Color(0xf2f2f2ff);

    double espacoBotaoTop = 10;
    double espacoBotaoRight = 15;

    return Scaffold(
        backgroundColor: corPadraoDois,
        appBar: AppBar(
          title: const Text("Contador de Truco"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body:
        SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: Row(
                    children: [
                      // Espaço para time 1
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Time 1",
                                  style: TextStyle(
                                    color: corPadraoUm,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w900,
                                  ),
                              ),
                              Text("$_pontuacaoTimeUm",
                                style: TextStyle(
                                  color: corPadraoUm,
                                  fontSize: 70,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: espacoBotaoRight),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeUm--;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: espacoBotaoTop),
                                        backgroundColor: corPadraoUm,
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 23,
                                        )
                                      ),
                                      child: const Text('-1')
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _pontuacaoTimeUm++;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: espacoBotaoTop),
                                      backgroundColor: corPadraoUm,
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 23,
                                      )
                                    ),
                                    child: const Text('+1')
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: espacoBotaoRight, top: espacoBotaoTop),
                                    child:   ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeUm -= 3;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: espacoBotaoTop),
                                        backgroundColor: corPadraoUm,
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 23,
                                        )
                                      ),
                                      child: const Text('-3')
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(top: espacoBotaoTop),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeUm += 3;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: espacoBotaoTop),
                                        backgroundColor: corPadraoUm,
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 23,
                                        )
                                      ),
                                      child: const Text('+3')
                                    ),
                                  ),
                                ],
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: espacoBotaoTop),
                                child:  ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _pontuacaoTimeUm = 0;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 55, vertical: espacoBotaoTop),
                                      backgroundColor: corPadraoUm,
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      )
                                    ),
                                    child: const Text('Zerar')
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(
                        //height: 300,
                        child: VerticalDivider(
                          color: Colors.black26,
                          indent: 200,
                          endIndent: 200,
                        )
                      ),

                      // Espaço para time 2
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Time 2",
                                style: TextStyle(
                                  color: corPadraoUm,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text("$_pontuacaoTimeDois",
                                style: TextStyle(
                                  color: corPadraoUm,
                                  fontSize: 70,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(right: espacoBotaoRight),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeDois--;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: espacoBotaoTop),
                                          backgroundColor: corPadraoUm,
                                          textStyle: const TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 23,
                                          )
                                      ),
                                      child: const Text('-1')
                                    ),
                                  ),

                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeDois++;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: espacoBotaoTop),
                                        backgroundColor: corPadraoUm,
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 23,
                                        )
                                      ),
                                      child: const Text('+1')
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: espacoBotaoTop, right: espacoBotaoRight),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeDois -= 3;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: espacoBotaoTop),
                                          backgroundColor: corPadraoUm,
                                          textStyle: const TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 23,
                                          )
                                      ),
                                      child: const Text('-3')
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(top: espacoBotaoTop),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeDois += 3;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: espacoBotaoTop),
                                          backgroundColor: corPadraoUm,
                                          textStyle: const TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 23,
                                          )
                                      ),
                                      child: const Text('+3')
                                    ),
                                  ),
                                ],
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: espacoBotaoTop),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _pontuacaoTimeDois = 0;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 55, vertical: espacoBotaoTop),
                                    backgroundColor: corPadraoUm,
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
                                  ),
                                  child: const Text('Zerar')
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        )
    );
  }
}