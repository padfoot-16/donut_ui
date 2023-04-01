// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {

  final String iconpath;
  const MyTab({
    Key? key,
    required this.iconpath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(iconpath),
      ),
    );
  }
}
