import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inherited_widget_provider/controller/player_controller.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen "),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Player Name : ${PlayerInfo.of(context).playerName}",
                  style: GoogleFonts.imprima(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Jersy NO : ${PlayerInfo.of(context).jersyNo}",
                  style: GoogleFonts.imprima(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Player Runs : ${PlayerInfo.of(context).playerRuns}",
                  style: GoogleFonts.imprima(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
