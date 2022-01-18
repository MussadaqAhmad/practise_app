import 'package:flutter/material.dart';
import 'Quote_Class.dart';

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
  List<Quote> quotes = [
    Quote(text: "Turn your wounds into wisdom.", author: "Oprah Winfrey")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
      ),
      body: Column(
        children: quotes
            .map((quote) => Text("${quote.text}- ${quote.author}"))
            .toList(),
      ),
    );
  }
}
