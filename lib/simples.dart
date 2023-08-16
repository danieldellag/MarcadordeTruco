import 'package:flutter/material.dart';

class simples extends StatefulWidget {

  @override
  simplesState createState() => simplesState();
}

class simplesState extends State<simples> {

  int _pontuacaoTimeUm = 0, _pontuacaoTimeDois = 0;

  Color cor_padrao_um = Colors.orange;
  Color cor_padrao_dois = const Color(0xf2f2f2ff);

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        backgroundColor: cor_padrao_dois,
        appBar: AppBar(
          title: Text("Contador de Truco"),
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
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Time 1",
                                  style: TextStyle(
                                    color: cor_padrao_um,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w900,
                                  ),
                              ),
                              Text("$_pontuacaoTimeUm",
                                style: TextStyle(
                                  color: cor_padrao_um,
                                  fontSize: 70,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _pontuacaoTimeUm--;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                      primary: cor_padrao_um,
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 23,
                                      )
                                    ),
                                    child: const Text('-1')
                                  ),
                                  const SizedBox(
                                    width: 15,
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
                                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                      primary: cor_padrao_um,
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 23,
                                      )
                                    ),
                                    child: const Text('+1')
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _pontuacaoTimeUm -= 3;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                      primary: cor_padrao_um,
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 23,
                                      )
                                    ),
                                    child: const Text('-3')
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _pontuacaoTimeUm += 3;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                      primary: cor_padrao_um,
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 23,
                                      )
                                    ),
                                    child: const Text('+3')
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _pontuacaoTimeUm = 0;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                                  primary: cor_padrao_um,
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  )
                                ),
                                child: const Text('Zerar')
                              ),
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Time 2",
                                style: TextStyle(
                                  color: cor_padrao_um,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text("$_pontuacaoTimeDois",
                                style: TextStyle(
                                  color: cor_padrao_um,
                                  fontSize: 70,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeDois--;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                        primary: cor_padrao_um,
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 23,
                                        )
                                      ),
                                      child: const Text('-1')
                                  ),
                                  const SizedBox(
                                    width: 15,
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
                                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                        primary: cor_padrao_um,
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 23,
                                        )
                                      ),
                                      child: const Text('+1')
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeDois -= 3;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                        primary: cor_padrao_um,
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 23,
                                        )
                                      ),
                                      child: const Text('-3')
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _pontuacaoTimeDois += 3;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                        primary: cor_padrao_um,
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 23,
                                        )
                                      ),
                                      child: const Text('+3')
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _pontuacaoTimeDois = 0;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                                      primary: cor_padrao_um,
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      )
                                  ),
                                  child: const Text('Zerar')
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