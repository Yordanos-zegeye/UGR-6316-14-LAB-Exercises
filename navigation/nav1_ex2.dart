import 'package:flutter/material.dart';

class ScreenX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen X"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Next"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ScreenY(data: "data from x"),
            ));
          },
        ),
      ),
    );
  }
}

class ScreenY extends StatelessWidget {
  final String data;

  const ScreenY({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Y"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('Yes');
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
