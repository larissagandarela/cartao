import 'package:flutter/material.dart';
import 'package:cartao/card_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: CardWidget(),
      
    );
  }
}