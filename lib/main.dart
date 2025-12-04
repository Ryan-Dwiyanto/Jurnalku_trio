import 'package:flutter/material.dart';
import 'package:jurnalku_trio/Input/input_certificate.dart';
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
      home: InputCertificate(),
    );
  }
}

