import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Catatan Pagi"),
        ),
        body: ListView(children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Judul"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Catatan"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Clear")),
                  ElevatedButton(onPressed: () {}, child: Text("Submit")),
                ],
              ),
              Column(
                children: [
                  ListCatatan(),
                  ListCatatan(),
                  ListCatatan(),
                  ListCatatan(),
                  ListCatatan(),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}

class ListCatatan extends StatelessWidget {
  const ListCatatan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.fromLTRB(19, 10, 10, 5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 224, 224, 224)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Judul Catatan",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          Text(
            "Judul Catatan",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          )
        ],
      ),
    );
  }
}
