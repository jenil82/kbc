import 'package:flutter/material.dart';
import 'package:kbc/winnerPage.dart';
import 'homePage.dart';
import 'loserPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        'loser': (context) => Loser(),
        'winner': (context) => Winner(),
      },
    ),
  );
}
