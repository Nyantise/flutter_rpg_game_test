import 'package:flutter/material.dart';
import 'package:rpg_ddr/appControl.dart';

double lifeStater = 15;
//Status
double vida = 100;
double vidaMax = 100;
double vidaMin = 0;
//Info Panel
int level = 1;
String levelAria = '01';
Color corVida = Color.fromRGBO(20, 246, 12, 1);

class StatusControl extends ChangeNotifier {
  static StatusControl instance = StatusControl();

  healthChange(double valor) {
    vida = vida + valor;
    vida < vidaMin ? vida = vidaMin : null;
    vida > vidaMax ? vida = vidaMax : null;
    lifeStater = vida >= (vidaMax / 100) * 93.33333333333333
        ? 15
        : vida >= (vidaMax / 100) * 86.66666666666667
            ? 14
            : vida >= (vidaMax / 100) * 80
                ? 13
                : vida >= (vidaMax / 100) * 73.33333333333333
                    ? 12
                    : vida >= (vidaMax / 100) * 66.66666666666667
                        ? 11
                        : vida >= (vidaMax / 100) * 60
                            ? 10
                            : vida >= (vidaMax / 100) * 53.33333333333333
                                ? 9
                                : vida >= (vidaMax / 100) * 46.66666666666666
                                    ? 8
                                    : vida >= (vidaMax / 100) * 40
                                        ? 7
                                        : vida >=
                                                (vidaMax / 100) *
                                                    33.33333333333333
                                            ? 6
                                            : vida >=
                                                    (vidaMax / 100) *
                                                        26.66666666666666
                                                ? 5
                                                : vida >= (vidaMax / 100) * 20
                                                    ? 4
                                                    : vida >=
                                                            (vidaMax / 100) *
                                                                13.33333333333333
                                                        ? 3
                                                        : vida >=
                                                                (vidaMax /
                                                                        100) *
                                                                    6.666666666666662
                                                            ? 2
                                                            : vida >=
                                                                    (vidaMax /
                                                                            100) *
                                                                        0.1
                                                                ? 1
                                                                : 0;
    lifeStater <= 3 ? lifeBlinkChanger = true : lifeBlinkChanger = false;
    corVida = vida >= (vidaMax / 100) * 66
        ? Color.fromRGBO(20, 246, 12, 1)
        : vida >= (vidaMax / 100) * 33
            ? Color.fromRGBO(255, 255, 0, 1)
            : vida >= (vidaMax / 100) * 20
                ? Colors.amber.shade800
                : Colors.red.shade600;
    AppControl.instance.notifier();
  }

  levelUp() {
    levelAria = level < 10 ? '0$level' : '$level';
  }
}
