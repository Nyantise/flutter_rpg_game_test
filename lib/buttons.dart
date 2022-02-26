import 'package:flutter/material.dart';
import 'package:rpg_ddr/appControl.dart';

import 'atributos.dart';

class TestBtns extends StatefulWidget {
  @override
  _TestBtnsState createState() => _TestBtnsState();
}

class _TestBtnsState extends State<TestBtns> {
  @override
  Widget build(BuildContext context) {
    return              Column(
                        children: [
                            Card(
                            color: Colors.white,
                            elevation: 10,
                            child: Container(
                              width: 75,
                              height: 75,
                              child: TextButton(
                                child: Text('-5',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 30,
                                  fontFamily: 'bebasNeue'
                                ),),
                                onPressed: () {
                                  setState(() {
                                    StatusControl.instance.healthChange(-5);
                                  });},),),),

                                  Card(
                            elevation: 10,
                            color: Colors.white,
                            child: Container(
                              width: 75,
                              height: 75,
                              child: TextButton(
                              child: Text('+10',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 30,
                                  fontFamily: 'bebasNeue'
                                ),),
                              onPressed: () {
                              setState(() {
                                StatusControl.instance.healthChange(10);
                              });},),),),
                              Card(
                            elevation: 10,
                            color: Colors.white,
                            child: Container(
                              width: 140,
                              height: 75,
                              child: TextButton(
                              child: Text('Show/Hidde',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 30,
                                  fontFamily: 'bebasNeue'
                                ),),
                              onPressed: () {
                              setState(() {
                                menuIsStarted?
                                 AppControl.instance.menuStop()
                                :AppControl.instance.menuStart();
                              });},),),),
                            ],
                            );


                            
  }
}