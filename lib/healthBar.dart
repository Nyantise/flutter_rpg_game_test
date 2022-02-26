import 'package:flutter/material.dart';

import 'atributos.dart';

class HealthBar extends StatefulWidget {
  @override
  _HealthBarState createState() => _HealthBarState();
}

class _HealthBarState extends State<HealthBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 55,
    width: 250,
    decoration: BoxDecoration(
      border: Border.all(
        color: corVida, width: 3
      ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35),
          bottomLeft: Radius.circular(35)
        )
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Row(
            children: [
              Text('Health',
              style: TextStyle(
                color: corVida,
                fontSize: 20,
                fontFamily: 'nova',
                fontWeight: FontWeight.bold
              ),),
              Icon(Icons.add_outlined,
              color: corVida,
              size: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14.0),
                child: Text('$vida/$vidaMax',
                style: TextStyle(
                  color: corVida,
                  fontFamily: 'nova',
                  letterSpacing: 4,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                ),
              )
            ],
          ),
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(
              left:16.0,
              right: 3,
              bottom: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 17,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 1? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3,
              bottom: 0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 2? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3,
              bottom: 0
              ),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 3? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 4? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 5? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 6? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 7? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 8? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 9? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 10? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 11? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 12? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 13? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 14? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:0.0,
              right: 3),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 350),
              width: 12,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: corVida),
                color: lifeStater >= 15? corVida: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
          ),


        ],),
        SizedBox(height: 3,)
      ],
    ),
                        );
  }
}