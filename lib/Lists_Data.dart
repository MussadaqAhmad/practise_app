import 'package:flutter/material.dart';

void main() => MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Lists_of_Data(),
    );

class Lists_of_Data extends StatefulWidget {
  const Lists_of_Data({Key? key}) : super(key: key);

  @override
  _Lists_of_DataState createState() => _Lists_of_DataState();
}

class _Lists_of_DataState extends State<Lists_of_Data> {
  List<String> quotes = [
    "Get busy living or get busy dying.",
    "You only live once, but if you do it right, once is enough.",
    "Life is what happens when you’re busy making other plans."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
