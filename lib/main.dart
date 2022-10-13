// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //  const TextStyle style1 = const TextStyle(
    //   color: Colors.blue, fontSize: 36);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Liste des entreprises'),
        ),
        body: Column(children: <Widget> [
          Card()

        ],)
            );
  }
}
