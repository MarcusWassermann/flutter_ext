import 'package:flutter/material.dart';
import 'package:flutter_ext/second_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.blue, // Blaue Hintergrundfarbe
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ),
                  );
                },
                child: const Text('Weiter'),
              ),
            ),
            Positioned(
              left: 16,
              bottom: 16,
              child: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  // Aktion für den Home-Button hinzufügen
                },
              ),
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Aktion für den Menü-Button hinzufügen
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
