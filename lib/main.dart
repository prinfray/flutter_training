// ignore_for_file: avoid_print

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
          title: const Text('Appbar'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.add),
                tooltip: 'log something on the log',
                onPressed: () {
                  print("this is the log from the add buttton");
                })
          ],
        ),
        body: ListView.separated(
            itemCount: 200,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(index.toString()),
                subtitle: Text('sous titre'),
                tileColor: index.isEven ? Colors.blue:Colors.white,
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_sharp),
                  ),
              );
              },
            separatorBuilder:(context, index) => Divider(),
        ),
            // ignore: sort_child_properties_last
            // child: ListView(
            //     children: List.generate(
            //         100,
            //         (int index) => ListTile(
            //               title: Text("List Number - $index"),
            //               trailing: Icon(Icons.arrow_forward),
            //             ))),
            );
  }
}
