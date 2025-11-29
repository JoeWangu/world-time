import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[700],
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(color: Colors.grey[100], fontSize: 18),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(color: Colors.grey[100], fontSize: 18),
            ),
            SizedBox(height: 8),
            TextButton.icon(
              onPressed: delete,
              label: Text(
                "delete quote",
                style: TextStyle(color: Colors.white),
                ),
              icon: Icon(Icons.delete),
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple[500],
                iconColor: Colors.white,
                // textStyle: const TextStyle(
                //   fontSize: 16,
                //   color: Colors.amber,
                // )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
