import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue, // Meeresblaue Hintergrundfarbe
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Boote M',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30
                ,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 14, 13, 13),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              childAspectRatio: 1.2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 8,
              children: [
                CategoryButton(
                  label: 'Sailboat',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ThirdScreen(category: 'Sailboat')),
                    );
                  },
                ),
                CategoryButton(
                  label: 'Motoryacht',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ThirdScreen(category: 'Motoryacht')),
                    );
                  },
                ),
                CategoryButton(
                  label: 'Motorboat',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ThirdScreen(category: 'Motorboat')),
                    );
                  },
                ),
                CategoryButton(
                  label: 'Ruderboat',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ThirdScreen(category: 'Ruderboat')),
                    );
                  },
                ),
                CategoryButton(
                  label: 'Jetski',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ThirdScreen(category: 'Jetski')),
                    );
                  },
                ),
                CategoryButton(
                  label: 'Wassersportartikel',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdScreen(
                              category: 'Wassersportartikel')),
                    );
                  },
                ),
                CategoryButton(
                  label: 'Anglerequipment',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ThirdScreen(category: 'Anglerequipment')),
                    );
                  },
                ),
                CategoryButton(
                  label: 'Sonstiges',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ThirdScreen(category: 'Sonstiges')),
                    );
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  // Aktion für Home-Icon hinzufügen
                },
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Aktion für Menü-Icon hinzufügen
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CategoryButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
      ),
      child: Text(label),
    );
  }
}
