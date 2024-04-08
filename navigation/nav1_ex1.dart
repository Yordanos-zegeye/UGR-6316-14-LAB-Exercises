import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "nav demo",
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen one"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("next"),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ScreenTwo()));
        },
      )),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen two"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("back"),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
