import 'package:flutter/material.dart';
import 'package:jurnalku_trio/dashboard_page.dart';
import 'package:jurnalku_trio/jurnal_pembiasaan.dart';
import 'package:jurnalku_trio/login_page.dart';
import 'package:jurnalku_trio/panduan_page.dart';
import 'package:jurnalku_trio/pekerjaan_page.dart';
import 'package:jurnalku_trio/profil_page.dart';
import 'package:jurnalku_trio/progress_page.dart';
import 'package:jurnalku_trio/setting_page.dart';
import 'explore_page.dart';
import 'package:jurnalku_trio/permintaan_saksi.dart';
import 'package:jurnalku_trio/catatan_sikap.dart';

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
      home: LoginPage(),

            initialRoute: '/login',
      

      routes: {
        // login
        '/login': (context) => const LoginPage(),
        // main
        '/dashboard': (context) =>  DashboardPage(),
        '/explore': (context) => ExplorePage(),
        '/profile': (context) => ProfilPage(page: 0,),
        '/jurnal-pembiasaan': (context) => JurnalPembiasaan(),
        '/permmintaan-saksi': (context) => PermintaanSaksi(),
        '/progress': (context) => ProgressPage(),
        '/catatan-sikap': (context) => CatatanSikap(),
        '/panduan': (context) => PanduanPage(),
        '/setting': (context) => SettingPage(),
      },
    );
  }
}
