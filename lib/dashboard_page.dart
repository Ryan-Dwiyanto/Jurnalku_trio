import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.home),
            SizedBox(width: 10),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Muhammad Ryan Dwiyanto",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      "PPLG XII-3",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage('assets/images/bgsecondary.svg'), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}