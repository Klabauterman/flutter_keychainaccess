import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_keychainaccess/flutter_keychainaccess.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String value = '';

  @override
  void initState() {
    super.initState();
  }

  write() async {
    var value = Random().nextInt(1000).toString();
    await FlutterKeychainaccess.write(key: "userToken", value: value);
  }

  read() async {
    var v = await FlutterKeychainaccess.read(key: "userToken");
    setState(() => value = v);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(onPressed: write, child: Text("write")),
              RaisedButton(onPressed: read, child: Text("read")),
              Text(value ?? 'unknown')
            ]
          )
        ),
      ),
    );
  }
}
