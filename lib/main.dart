import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget{
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList>{

  List<Quote> quotes = [
    Quote(text:'Sid won Bigg Boss', author:'Sidharth Shukla'),
    Quote(text:'Amrita Rao is Actress', author:'Shahid Kapoor'),
    Quote(text:'Stephanie Ruiz is Model', author:'Samay  Raina'),


  ];



  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote:quote,
          delete:(){
            setState((){
              quotes.remove(quote);
            });
          }
        )).toList()


      ),
    );
  }
}

