import 'package:flutter/material.dart';
import 'package:hac/medicinelist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'medicine delivery',
      home: Medicinelist(),
    );
  }
}
