import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes/quote_card.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'author 10', text: 'text10'),
    Quote(author: 'author 2', text: 'text2'),
    Quote(author: 'author 3', text: 'text3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
        title: Text('Awsome Quotes'),
    centerTitle: true,
    ),
    body: Column(
    children: quotes.map((quote) =>
    QuoteCard(
    quote: quote,
    delete: (){
    setState(() {
    quotes.remove(quote);
    });}
    )).toList(),
    ),
    );
    }
  }
