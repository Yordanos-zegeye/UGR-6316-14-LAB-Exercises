import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            appBar: AppBar(
              leading: Icon(Icons.arrow_back),
              actions: [
                Icon(Icons.logout),
                SizedBox(width: 20.0),
                Icon(Icons.settings)
              ],
            ),
            body: Column(children: [
              Expanded(
                child: Image.asset(
                  "img2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "1975 Porsch 911 carrera.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Row(
                children: [
                  Row(
                    children: [Icon(Icons.thumb_up), Text("0")],
                  ),
                  SizedBox(width: 50.0),
                  Row(
                    children: [Icon(Icons.comment), Text("0")],
                  ),
                  SizedBox(width: 50.0),
                  Row(
                    children: [
                      Row(
                        children: [Icon(Icons.share), Text("Share")],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Essential Information",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "1 of 3 done",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  )
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 2.0,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                children: [
                  Icon(Icons.assignment_turned_in_outlined),
                  SizedBox(width: 30.0),
                  Text(
                    "Year,Make,Model,Vin",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.edit),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Year: 1975"),
                  Text("Make: Porsch"),
                  Text("Model: 911 Carera"),
                  Text("Vin: 91154"),
                ],
              ),
              Divider(
                color: Colors.grey[500],
                thickness: 1.5,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.assignment_turned_in_outlined),
                  SizedBox(width: 30.0),
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.edit),
                ],
              ),
              Divider(
                color: Colors.grey[500],
                thickness: 1.5,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                children: [
                  Icon(Icons.assignment_turned_in_outlined),
                  SizedBox(width: 30.0),
                  Text(
                    "Photos",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.edit),
                ],
              ),
            ])));
  }
}
