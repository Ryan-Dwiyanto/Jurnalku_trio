import 'package:flutter/material.dart';
import 'package:jurnalku_trio/explore_guest_page.dart';
import 'package:jurnalku_trio/explore_page.dart';
import 'package:jurnalku_trio/permintaan_saksi.dart';
import 'package:jurnalku_trio/catatan_sikap.dart';
import 'package:jurnalku_trio/profil_page.dart';


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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ExploreGuestPage(),
    );
  }
}
