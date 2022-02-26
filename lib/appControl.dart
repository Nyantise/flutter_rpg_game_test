import 'package:flutter/material.dart';

int menuShower = 1;
int notifierChanger = 0;
int mainChanger = 0;
int sizeChanger = 1;

double gross = 10;
double elevator = 4;
double scaler = 1;

bool introduction = false;
bool firstVisit = true;
bool changeCaller = false;
bool lifeBlinkChanger = false;

bool showWeaponBar = false;
bool showHealthBar = false;
bool showSttsBar = false;
bool showAria = false;
bool menuIsStarted = false;

Offset translator = Offset(0, 0);

Color colorator = Colors.white;

class AppControl extends ChangeNotifier {
  static AppControl instance = AppControl();

  notifier() {
    changeCaller = !changeCaller;
    notifyListeners();
  }

  menuTransition(int value) {
    //0 = Todo menu OFF//
    menuShower = value;
    notifier();
  }

  startApp() {
    firstVisit = false;
    notifier();
  }

  menuStart() {
    menuIsStarted = true;
    Future.delayed(Duration(milliseconds: 750), () {
      // Aria
      showAria = true;
      menuIsStarted = true;
      notifier();
    });
  }

  menuStop() {
    menuIsStarted = false;
  }
}
