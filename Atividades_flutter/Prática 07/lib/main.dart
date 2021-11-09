import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        child: Image(
          image: NetworkImage('https://picsum.photos/250?image=37'),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
        ),

        padding: EdgeInsets.all(100),
      ),
    ),
  );
}
