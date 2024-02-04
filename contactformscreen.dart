import 'package:flutter/material.dart';

class ContactFormScreen extends StatelessWidget {
  const ContactFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontaktformular'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Kontaktformular',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Telefonnummer',
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'E-Mail',
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nachricht',
                ),
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              child: const Text('Senden'),
            ),
          ],
        ),
      ),
    );
  }
}
