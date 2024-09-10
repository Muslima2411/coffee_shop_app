import 'package:flutter/material.dart';

class MyOwnFantasticPage extends StatefulWidget {
  const MyOwnFantasticPage({super.key});

  @override
  State<MyOwnFantasticPage> createState() => _MyOwnFantasticPageState();
}

class _MyOwnFantasticPageState extends State<MyOwnFantasticPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is my personal fantastic page"),
      ),
    );
  }
}
