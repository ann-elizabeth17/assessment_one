import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  // Variable to store the selected container color
  Color _containerColor = const Color.fromARGB(255, 255, 255, 255);

  // Method to change the color of the container
  void _changeColor(Color color) {
    setState(() {
      _containerColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Your Color"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Center(
          child: Column(
            children: [
              // Red Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    _changeColor(const Color.fromARGB(255, 227, 25, 11));
                  },
                  child: const Text("Red"),
                ),
              ),
              // Blue Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    _changeColor(const Color.fromARGB(255, 11, 71, 120));
                  },
                  child: const Text("Blue"),
                ),
              ),
              // Green Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    _changeColor(const Color.fromARGB(255, 9, 122, 13));
                  },
                  child: const Text("Green"),
                ),
              ),
              // Purple Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    _changeColor(const Color.fromARGB(255, 90, 13, 103));
                  },
                  child: const Text("Purple"),
                ),
              ),
              // Black Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    _changeColor(Colors.black);
                  },
                  child: const Text("Black"),
                ),
              ),
              // Container that changes color
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 150,
                  width: 300,
                  color: _containerColor, // Uses the selected color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
