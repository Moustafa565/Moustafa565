import 'package:flutter/material.dart';

import '../../../my_app.dart';
import '../data.dart';

class DetailsScreen extends StatelessWidget {
  final Comment comment;

  const DetailsScreen({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'Comment Details',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Name: ${comment.name}',
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
            ),
            SizedBox(height: 10),
            Text(
              'Email: ${comment.email}',
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
            ),
            SizedBox(height: 20),
            Text('Body:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
            SizedBox(height: 5),
            Text(
              comment.body,
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
