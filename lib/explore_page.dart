import 'package:flutter/material.dart';
import 'package:jurnalku_trio/dashboard_page.dart';
import 'package:jurnalku_trio/login_page.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
    }, child: Text("Dashboard Page"));
  }
}