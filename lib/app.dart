import 'package:aspirewebpanel/homepage_data_insert/homepage_data_insert.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: HomePageDataInsert(),
          ),
        ),
      ),
    );
  }
}
