import 'package:flutter/material.dart';
import 'package:flutter_ext/contactformscreen.dart';

class FourthScreen extends StatelessWidget {
  final String category;

  const FourthScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        title: const Text(
          'Boote M',
          style: TextStyle(fontSize: 30),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Aktion für den Menü-Button hinzufügen
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Preis: 520000 EUR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Bootsdaten: ...',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Anbieter: ...',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Aktion für den Home-Button hinzufügen
              },
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Aktion für den Menü-Button hinzufügen
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 90,
            child: Center(
              child: ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactFormScreen(),
                    ),
                  );
                  if (result == 'back') {
                    // ignore: use_build_context_synchronously
                    Navigator.popUntil(
                        context, ModalRoute.withName('/third_screen'));
                  }
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Text(
                  'Anbieter kontaktieren',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
