import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlayerInfo extends InheritedWidget {
  String playerName;
  int jersyNo;
  int playerRuns = 25000;

  PlayerInfo(
      {super.key,
      required this.jersyNo,
      required this.playerName,
      required this.playerRuns,
      required super.child});

  static PlayerInfo of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(PlayerInfo oldWidget) {
    return jersyNo != oldWidget.jersyNo || playerRuns != oldWidget.playerRuns;
  }
}
