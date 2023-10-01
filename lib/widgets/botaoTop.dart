import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class botaoTop extends StatelessWidget {

  final String image;
  final String text;
  final Function() onTap;
  final Color color;

  const botaoTop({
    super.key,

    required this.image,
    required this.text,
    required this.onTap,
    this.color = Colors.pink,
  });

  @override
  Widget build (BuildContext context){
    return Container(
      //height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
        /*boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: Offset(4, 8),
            spreadRadius: 3.5,
            color: Colors.grey.withOpacity(0.6),
          ),
        ],*/
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey.withOpacity(0.2),
                  child: Center(
                    child: Image.asset(image, height: 92, width: 92),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        text,
                        style: GoogleFonts.creteRound(
                          textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ),
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
}