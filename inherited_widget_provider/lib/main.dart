import 'package:flutter/material.dart';
import 'package:inherited_widget_provider/controller/player_controller.dart';
import 'package:inherited_widget_provider/view/first_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayerInfo(
      playerName: "Virat",
      jersyNo: 18,
      playerRuns: 22000,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}
