import 'package:flutter/material.dart';
import 'package:jurnalku_trio/panduan_page.dart';
import 'explore_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: PanduanPage(),
    );
  }
}

