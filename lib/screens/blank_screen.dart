import 'package:flutter/material.dart';

class BlankScreen extends StatefulWidget {
  const BlankScreen({super.key});

  @override
  State<BlankScreen> createState() => _BlankScreenState();
}

class _BlankScreenState extends State<BlankScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blank Screen'),
      ),
      body: Center(
        child: Text('This is a blank screen.'),
      
      ),
    );
  }
}