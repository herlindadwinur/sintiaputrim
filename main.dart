import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void myDialog(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (BuildContext konteks) {
        return AlertDialog(
          title: Text('Data Diri'),
          content: Text('Nama:Sintia Putri M'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(konteks).pop(),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS-Sintia Putri M-19201105',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _nama = '';
  String _nim = '';
  String _tokoh = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UTS-Sintia Putri M-19201105'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Data'),
            TextField(
              decoration: InputDecoration(hintText: 'Nama'),
              onChanged: (text) {
                var textInput = text;
                if (textInput != null) {
                  setState(() {
                    _nama = textInput;
                  });
                }
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'NIM'),
              onChanged: (text) {
                var dataInput = double.tryParse(text);
                if (dataInput != null) {
                  setState(() {
                    _nim = dataInput as String;
                  });
                }
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Tokoh Favorit'),
              onChanged: (text) {
                var dataInput = double.tryParse(text);
                if (dataInput != null) {
                  setState(() {
                    _tokoh = dataInput as String;
                  });
                }
              },
            ),
            ElevatedButton(
              onPressed: () => print(_tokoh),
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
