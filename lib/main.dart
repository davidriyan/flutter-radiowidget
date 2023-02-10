import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> options = ['option 1', 'option 2']; // membuat list options

class _HomePageState extends State<HomePage> {
  String currentOptions = options[0]; //membuat default currentoption
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Radio widget'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('option 1'),
            leading: Radio(
              value: options[
                  0], // maksudnya adalah string list pertama => option 1
              groupValue: currentOptions,
              onChanged: (value) {
                setState(() {
                  currentOptions = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('option 2'),
            leading: Radio(
              value: options[
                  1], // maksudnya adalah string list pertama => option 2
              groupValue: currentOptions,
              onChanged: (value) {
                setState(() {
                  currentOptions = value.toString();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
