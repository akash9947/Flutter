import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "abcd", author: "oscar wild"),
    Quote(text: "abcd", author: "oscar wild"),
    Quote(text: "abcd", author: "oscar wild"),
  ];
  Widget quoteTemplate(e) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              e.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              e.author,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(children: quotes.map((e) => quoteTemplate(e)).toList()),
    );
  }
}
