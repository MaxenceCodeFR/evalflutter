import 'package:flutter/material.dart';


/////////////////////////////////////////////
//J'AVOUE QUE J'AI PAS COMPRIS CETTE PARTIE//
//Mais je voulais absolument mettre les indicators//
///////////////////////////////////////////
class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    this.isSquare = true,
    this.size = 16,
    this.textColor = const Color(0xffffffff),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
    );
  }
}