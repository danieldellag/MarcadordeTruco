import 'package:flutter/material.dart';

Future<bool> dialogGenerico(BuildContext context, String titulo, String texto) async {
  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async{
          return false;
        },
        child: Dialog(
          backgroundColor: const Color(0x00000000),
          insetPadding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child:
            ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(titulo,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      texto,
                      textAlign: TextAlign.center
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
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
                          child: const Row(
                            children: [
                              Icon(Icons.cancel_outlined, color: Colors.black),
                              Text("Não", style: TextStyle(color: Colors.black)),
                            ],
                          )
                        ),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).pop(true);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            backgroundColor: Colors.orange,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w900,
                            )
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.delete),
                              Text("Sim"),
                           ],
                          )
                        )
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  );
}