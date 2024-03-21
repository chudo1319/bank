// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Nastya Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({super.key, required this.textController});
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: TextField(
          controller: textController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name',
          ),
        ));
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
      child: Center(
          child: Column(children: [
        Container(
            width: 400,
            height: 100,
            child: Row(
              children: [
                Text('Balance',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    textAlign: TextAlign.right),
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(110.0),
                  child: Image.asset('lib/assets/me.jpg',
                      height: 50.0, width: 50.0),
                ),
              ],
            )),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color.fromARGB(255, 235, 229, 229)),
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(300.0),
                          child: Image.asset('lib/assets/america.jpg',
                              height: 50.0)),
                      SizedBox(height: 35, width: 80),
                      Text('1.230,60',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Text('US Dollar',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 159, 155, 155)))
                    ])),
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color.fromARGB(255, 235, 229, 229)),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Image.asset('lib/assets/australia.jpg',
                            height: 50.0)),
                    SizedBox(height: 35, width: 80),
                    Text('3.630,60',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    Text('Australia Dollar',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 159, 155, 155))),
                  ],
                )),
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color.fromARGB(255, 235, 229, 229)),
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(300.0),
                          child: Image.asset('lib/assets/hongkong.png',
                              height: 50.0)),
                      SizedBox(height: 35, width: 80),
                      Text('1.456,60',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Text('Hong Kong dollar',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 159, 155, 155)))
                    ]))
          ]),
        ),
        Container(
          width: 400,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromARGB(255, 143, 233, 255)),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 150,
                  child: Text('Invite your friends now!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Spacer(),
                Container(
                    height: 40,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black),
                    child: Center(
                        child: Text('Earn \$100',
                            style: TextStyle(color: Colors.white))))
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 400,
          child: Row(
            children: [
              Text(
                'Transaction',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Spacer(),
              Text('View all',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold))
            ],
          ),
        )
      ])),
    ));
  }
}
