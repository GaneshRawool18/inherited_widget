import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inherited_widget_provider/controller/player_controller.dart';
import 'package:inherited_widget_provider/view/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen "),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const SecondScreen();
          }));
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
