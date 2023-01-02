import 'dart:html';

import 'package:flutter/material.dart';

 class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon:Icon(Icons.menu),
          color: Colors.grey,
          onPressed: () {
            
          },
        ),
        actions: [
           IconButton(
          icon:Icon(Icons.person),
          color: Colors.grey,
          onPressed: () {
            
          },
        ),
        ],
       ),
      body: Text(""),
    );
    
  }
}