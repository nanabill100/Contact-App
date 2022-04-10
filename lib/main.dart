import 'package:flutter/material.dart';
import './contacts_list.dart';

void main() {
  runApp(ContactBook());
}

class ContactBook extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     home: const List() 
    );
  }
}
