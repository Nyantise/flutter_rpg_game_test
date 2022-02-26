import 'package:flutter/material.dart';
import 'package:rpg_ddr/appControl.dart';
import 'package:rpg_ddr/mainMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppControl.instance,
      builder: (context, child) {
        return AnimatedSwitcher(
            duration: Duration(milliseconds: 100),
            child: (changeCaller ? StaterPg2() : StaterPg2()));
      },
    );
  }
}

class StaterPg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MainMenu()),
    );
  }
}

class StaterPg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: firstVisit ? AwaitPage() : MainMenu()),
    );
  }
}

class AwaitPage extends StatefulWidget {
  @override
  _AwaitPageState createState() => _AwaitPageState();
}

bool awaitClicked = false;

class _AwaitPageState extends State<AwaitPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          awaitClicked = true;
        });
        Future.delayed(Duration(milliseconds: 2000), () {
          AppControl.instance.startApp();
        });
      },
      child: AnimatedOpacity(
        opacity: awaitClicked ? 0 : 1,
        curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 3000),
        child: Transform.scale(
          scale: 1.1,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/deldora.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
