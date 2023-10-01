import 'package:flutter/material.dart';

//ignore: must_be_immutable
class botaoComplexo extends StatelessWidget{

  final Function()? onTap;
  final String text;
  final Color color;
  final double height, width;
  final bool activated;

  final Color corBotaoBloqueadoFundo = const Color(0xffcacad5);
  final Color corBotaoBloqueadoTexto = const Color(0xff7d7d84);

  botaoComplexo({
    super.key,

    required this.onTap,
    this.text = "BUTTON",
    this.color = Colors.orange,
    this.height = 45,
    this.width = 90,
    this.activated = true,
  });

  @override
  Widget build (BuildContext context){
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Material(
          color: activated ? color : corBotaoBloqueadoFundo,
          child: InkWell(
            onTap: activated ? onTap : null,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: activated ? Colors.white : corBotaoBloqueadoTexto,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}