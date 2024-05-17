import 'package:flutter/material.dart';

class CSave extends StatefulWidget {
  const CSave({super.key});

  @override
  State<CSave> createState() => _CSaveState();
}

class _CSaveState extends State<CSave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "C-Save",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Oswald-Light.ttf',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 173, 19, 173),
        iconTheme:
            IconThemeData(color: Colors.white), // Set icon color to white
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 20,
          child: Container(
            height: 100,
          ),
        ),
      ),
    );
  }
}
