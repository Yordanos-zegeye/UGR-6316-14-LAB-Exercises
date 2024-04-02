import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Center(
              child: Text(
                "Cart",
                style: TextStyle(
                    color: Colors.orange[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            leading: Icon(Icons.arrow_back),
          ),
          body: Column(
            children: [
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Shopping Cart"),
                subtitle: Text("verify your quantity and checkout"),
              ),
              SizedBox(height: 30.0),
              Container(
                width: 600,
                height: 100,
                child: Card(
                  color: Colors.grey,
                  elevation: 4,
                  shape: RoundedRectangleBorder(),
                  child: ListTile(
                    leading: SizedBox(
                      width: 48,
                      height: 48,
                      child: Image.asset("assets/img2.jpg"),
                    ),
                    title: Text("Calas"),
                    subtitle: Text("#15.00"),
                    trailing: Column(
                      children: [
                        Icon(Icons.add),
                        Text("data"),
                        Icon(Icons.remove),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 600,
                height: 125,
                child: Card(
                  color: Colors.grey,
                  elevation: 4,
                  shape: RoundedRectangleBorder(),
                  child: ListTile(
                    leading: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset("assets/img2.jpg"),
                    ),
                    title: Text("Angel Hair"),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("#15.00"),
                        Text("salmon mozarela"),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Icon(Icons.add),
                        Text("data"),
                        Icon(Icons.remove),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
