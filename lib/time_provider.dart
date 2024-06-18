
import 'package:flutter/material.dart';

class GlobalVariables {
  static bool isGameOver = false;
  static bool isEnd = false;
}


class TimeProvider with ChangeNotifier {
  DateTime _dateTime = DateTime(2022, 1, 3, 9, 0); // Segunda-feira, 9:00 AM

  DateTime get dateTime => _dateTime;

  void zeroGame() {

    GlobalVariables.isGameOver = false;
    GlobalVariables.isEnd = false;
    _dateTime = DateTime(2022, 1, 3, 9, 0);
  }


  void _checkAndAdjustTime() {
    if (_dateTime.hour >= 22) {
      // Avançar para o dia seguinte e definir a hora para 09:00 AM
      _dateTime = DateTime(_dateTime.year, _dateTime.month, _dateTime.day + 1, 9, 0);
    }

    //Condição para Game Over
    if (_dateTime.weekday == DateTime.sunday && _dateTime.hour >= 15) {
        GlobalVariables.isGameOver = true;
    }
  }


  void addThreeHours() {
    _dateTime = _dateTime.add(Duration(hours: 3));
    _checkAndAdjustTime();
    notifyListeners();
  }

    void addTwoHours() {
    _dateTime = _dateTime.add(Duration(hours: 2));
    _checkAndAdjustTime();
    notifyListeners();
  }

    void addOneHour() {
    _dateTime = _dateTime.add(Duration(hours: 1));
    _checkAndAdjustTime();
    notifyListeners();
  }

    void addFourHours() {
    _dateTime = _dateTime.add(Duration(hours: 4));
    _checkAndAdjustTime();
    notifyListeners();
  }

  void addEightHours() {
    _dateTime = _dateTime.add(Duration(hours: 8));
    _checkAndAdjustTime();
    notifyListeners();
  }

  void addFiveHours() {
    _dateTime = _dateTime.add(Duration(hours: 5));
    _checkAndAdjustTime();
    notifyListeners();
  }

  void addSixHours() {
    _dateTime = _dateTime.add(Duration(hours: 6));
    _checkAndAdjustTime();
    notifyListeners();
  }

  void addSevenHours() {
    _dateTime = _dateTime.add(Duration(hours: 7));
    _checkAndAdjustTime();
    notifyListeners();
  }

   void addDozeHours() {
    _dateTime = _dateTime.add(Duration(hours: 12));
    _checkAndAdjustTime();
    notifyListeners();
  }

  void addNineHours() {
    _dateTime = _dateTime.add(Duration(hours: 9));
    _checkAndAdjustTime();
    notifyListeners();
  }

  String get formattedTime {
    final hours = _dateTime.hour % 12 == 0 ? 12 : _dateTime.hour % 12;
    final period = _dateTime.hour >= 12 ? 'PM' : 'AM';
    return '$hours:00 $period';
  }

  String get formattedDay {
    const daysOfWeek = [
      'Domingo',
      'Segunda-feira',
      'Terça-feira',
      'Quarta-feira',
      'Quinta-feira',
      'Sexta-feira',
      'Sábado'
    ];
    return daysOfWeek[_dateTime.weekday % 7];
  }
}

