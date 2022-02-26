



import 'package:flutter/cupertino.dart';

Widget ariaBody(bool opA, bool dfP, double pctX, double pctY ){
  return Positioned(
                  left: 315,
                  top: 20,
                  bottom: 20,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 2500),
                    curve: Curves.fastOutSlowIn,
                    opacity: opA? 1 : 0,
                    child: Stack(
                      children: [
                        Transform.translate(
                        offset: Offset(
                        (dfP ? 0 : ((pctX / 4))), 
                        (dfP ? 0 : ((pctY/ 4)))),
                          child: Image.asset('assets/images/Aria.png',
                          color: Color.fromRGBO(255, 255, 0, 1),
                          )),

                        Transform.translate(
                          offset: Offset(
                        (dfP ? 0 : -((pctX / 10))), 
                        (dfP ? 0 : -((pctY/ 10))),
                        ),
                        child: Image.asset('assets/images/Aria.png',
                        color: Color.fromRGBO(45, 225, 252, 1),) ,
                        ),


                        Transform.translate(
                          offset: Offset(
                        (dfP ? 0 : ((pctX / 20))), 
                        (dfP ? 0 : ((pctY/ 20)))),
                          child: Image.asset('assets/images/Aria.png')),
                      ],
                    ),
                  ),
                );

}