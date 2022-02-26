

import 'package:flutter/material.dart';
import 'package:rpg_ddr/aria.dart';
import 'package:rpg_ddr/buttons.dart';

import 'appControl.dart';
import 'atributos.dart';
import 'healthBar.dart';

double localX = 0;
double localY = 0;
bool defaultPosition = true;

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> with TickerProviderStateMixin{
  late AnimationController animationBlink;

  @override
    void initState() {
      animationBlink =
          new AnimationController(vsync: this, duration: Duration(milliseconds: 650));
      animationBlink.repeat(reverse: true);
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double percentageX = (localX / (size.width )) * 100;
    double percentageY = (localY / (size.height )) * 100;
    double percentageToPositionX = percentageX >= 50? percentageX -50: (-50 + percentageX) ;
    double percentageToPositionY = percentageY >= 50? percentageY -50: (-50 + percentageY) ;  

    return MouseRegion(
      onEnter: (_) => setState(() => defaultPosition = false),
         onExit: (_) => setState(() {
         localY = (size.height) / 0.65;
         localX = (size.width) / 0.45;
          defaultPosition = true;
         }),
        onHover: (details) {
         if (mounted) setState(() => defaultPosition = false);
          if (details.localPosition.dx > 0 && details.localPosition.dy > 0) {
           if (details.localPosition.dx < (size.width) * 1.5 && details.localPosition.dy > 0) {
             localX = details.localPosition.dx;
             localY = details.localPosition.dy;
           }
         }
       },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 1000),
              curve: Curves.fastOutSlowIn,
              left: sizeChanger == 0?512 :25,
              right: sizeChanger == 0? 512 :25,
              bottom: sizeChanger == 0 && mainChanger== 0?
              234 - size.height:
              sizeChanger == 0?
              234:25,
              top: sizeChanger == 0 && mainChanger== 0?
              234 +  size.height:
              sizeChanger == 0?
              234:25,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                decoration: BoxDecoration(
                  border: Border.all(width: sizeChanger==0? 10:7, color: Colors.yellow),
                  borderRadius: BorderRadius.all(Radius.circular(sizeChanger==1?25:70))
                  ),

                child: AnimatedOpacity(
                  opacity: menuIsStarted?1:0,
                  duration: Duration(milliseconds:2500),
                  curve: Curves.fastOutSlowIn,
                  child: Stack(children: [


                      Positioned(        //Status Bar//
                      left:25,
                      top: 25,
                        child:Transform.translate(
                        offset: Offset(
                        (defaultPosition ? 0 : ((percentageToPositionX / 16))), 
                        (defaultPosition ? 0 : ((percentageToPositionY/ 16)))),
                          child: Container( 
                          width: 425,
                          height: 350,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                          border: Border.all(width: gross, color: Colors.yellow),),
                           child: Column(children: [
                              //Nome e level    
                              Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                padding: const EdgeInsets.only(
                                top:25.0,                    //NOME
                                right: 8, ),
                                  child: Text('Aria Deepknot',
                                  style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 0, 1),
                                  fontFamily: 'nova',
                                  fontSize: 40,
                                  height: 0.7,
                                  fontWeight: FontWeight.bold
                                  ),),),
                                  ],),
                                 
                              Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                padding: const EdgeInsets.only(
                                top:3,
                                ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 3, color: Color.fromRGBO(45, 225, 252, 1)),
                                      borderRadius: BorderRadius.all(Radius.circular(70))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal:5,
                                        vertical: 2),
                                      child: Text('Nv: $levelAria',     //LEVEL
                                      style: TextStyle(
                                      color: Color.fromRGBO(45, 225, 252, 1),
                                      fontFamily: 'nova',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),),
                                Padding(
                                padding: const EdgeInsets.only(
                                left:20,
                                top: 6),
                                child: Text('(Briguenta)',         //TITULO
                                style: TextStyle(
                                color: Color.fromRGBO(255, 255, 0, 1),
                                fontSize: 38,
                                fontFamily: 'neue'
                                ),),),
                                ],),
                                
                                SizedBox(height: 25),


                                


                                Column(
                                  children: [

                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Text('Pontos Distribuidos',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'kohoB',
                                      fontSize: 30,
                                    ),),
                                  )
                                ],),  


                                    SizedBox(height: 15,),
                                    
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(    //SHOOTER/////
                                        height:120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                        border: Border.all(width:3, color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(70))
                                        ),
                                          child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 6.0),
                                              child: Text('SHOOTER',
                                              style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'rye',
                                              fontSize: 18,
                                              height: 2,
                                              )),
                                            ),
                                            Text('(nenhum)',
                                            style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'neue',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                            ))
                                            ],),
                                            ),

                                            Container(    //Engineer/////
                                        height:120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                        border: Border.all(width:3, color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(70))
                                        ),
                                          child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('ENGINEER',
                                            style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'wire',
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold
                                            )),
                                            Text('(nenhum)',
                                            style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'neue',
                                            fontSize: 15,
                                            height: 1.3
                                            ))
                                            ],),
                                            ),

                                            Container(    //Urban/////
                                        height:120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                        border: Border.all(width:3, color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(70))
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              bottom:10.0),
                                            child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Urban',
                                              style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'nanum',
                                              fontSize: 48,
                                              fontWeight: FontWeight.bold
                                              )),
                                              Text('(nenhum)',
                                              style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'neue',
                                              fontSize: 15,
                                              height: 0.65
                                              ))
                                              ],),
                                          ),
                                            ),
                                    ],),
                                  ],
                                )

                                

                                //INSERT NEW
                                ],),
                                ),),
                                ),


                      Positioned(
                      left:25,
                      top: 400,
                        child: Transform.translate(
                        offset: Offset(
                        (defaultPosition ? 0 : ((percentageToPositionX / 16))), 
                        (defaultPosition ? 0 : ((percentageToPositionY/ 16)))),
                          child: Container( //esquerdo
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                          bottomRight:  Radius.circular(100),
                          topLeft:  Radius.circular(100)),
                          border: Border.all(width: gross, color: Colors.yellow),
                          ),
                          width: 375,
                          height: 200,
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                              SizedBox(width:5),
                              Container(
                              height:120,
                              width: 120,
                              decoration: BoxDecoration(
                              border: Border.all(width:3, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                                child: Center(
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Principal',
                                    style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'neue',
                                    fontSize: 30,
                                    )),
                                    Text('(nenhuma)',
                                    style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'neue',
                                    fontSize: 15,
                                    ))
                                    ],)
                                    ),
                                          ),
                                    Container(
                                    height:120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                    border: Border.all(width:3, color: Colors.grey),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                      child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Gerador',
                                        style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'neue',
                                        fontSize: 30,
                                        )),
                                        Text('(nenhum)',
                                        style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'neue',
                                        fontSize: 15,
                                        ))
                                        ],),
                                        ),
                                        SizedBox(width:5),
                                      ],)
                                      ],),

                                    ),),),


                          //ARIA//
                      ariaBody(showAria, defaultPosition, percentageToPositionX, percentageToPositionY),


                         //HEALTH BAR MENU SHOW//
                      Positioned(
                      top: 250,
                      left: 535,
                      child: Transform.translate(
                      offset: Offset(
                      (defaultPosition ? 0 : -((percentageToPositionX / 5))), 
                      (defaultPosition ? 0 : -((percentageToPositionY/ 5))),
                      ), 
                      child:  AnimatedSwitcher(
                      duration: Duration(milliseconds: 150),
                      transitionBuilder: (child, animation) => FadeTransition(opacity: animation,
                      child: SizedBox(child: child),),
                      child: lifeBlinkChanger? FadeTransition(opacity: animationBlink,
                      child: HealthBar(),):
                      HealthBar(),
                      ),),),

                        Positioned(
                          left: 775,
                          child: TestBtns())
                      
                      
                      
                      
                      ],),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
    void dispose() {
      animationBlink.dispose();
      super.dispose();
    }
}