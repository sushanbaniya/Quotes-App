import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16,16,16,0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Text(
                    quote.text,
                    style: TextStyle(
                      fontSize:18,
                      color: Colors.pink,
                    )
                ),
                SizedBox(
                    height: 20
                ),
                Text(
                    quote.author,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.pinkAccent,
                    )
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton.icon(
                  onPressed: delete,
                  label: Text('Delete This Quote'),
                  icon: Icon(Icons.delete),
                )
              ]
          ),
        )
    );
  }
}