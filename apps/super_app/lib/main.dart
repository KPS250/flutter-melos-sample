import 'package:flutter/material.dart';
import 'package:mini_app/mini_app.dart'; // Import the MiniApp module
import 'package:ui_kit/ui_kit.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent App'),
      ),
      body: Center(
        child: Button(
          label: 'Next',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: const Text('Second Route'),
      ),
      */
      body: const Center(
        child: MyHomePage(
            title: 'Mini App in Parent App'), // Use the MiniAppScreen here
      ),
    );
  }
}
