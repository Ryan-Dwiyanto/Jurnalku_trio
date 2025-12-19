import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Banner-Web.jpg'),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(top: 160,),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Masuk Untuk Memulai Jurnalku',
                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20,),
                      Text("Username atau NIS", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),),
                      const SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Username atau NIS",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Text("Password", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),),
                      const SizedBox(height: 8,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Masukkan Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                      ),
                      SizedBox(height: 24,),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/dashboard');
                        }, 
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 48),
                          backgroundColor: Colors.blue[900],
                          shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text("Masuk", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),), 
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: Text(
                          "Lupa Password ? Hubungi Guru Laboran",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center, 
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Menyatukan Upaya untuk Kemajuan Siswa",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif",
                    softWrap: true,
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon( Icons.house, size: 30,),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dirancang untuk Sekolah Kami",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
                                softWrap: true,
                                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon( Icons.table_chart, size: 30,),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pemantauan yang Terstruktur",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
                                softWrap: true,
                                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon( Icons.table_chart, size: 30,),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pemantauan yang Terstruktur",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
                                softWrap: true,
                                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon( Icons.table_chart, size: 30,),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pemantauan yang Terstruktur",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
                                softWrap: true,
                                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon( Icons.table_chart, size: 30,),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pemantauan yang Terstruktur",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
                                softWrap: true,
                                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
              margin: const EdgeInsets.only(top: 50,),
              color: Colors.blue[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.email, color: Colors.white, size: 30,),
                          SizedBox(width: 10,),
                          Icon(Icons.phone, color: Colors.white, size: 30,),
                          SizedBox(width: 5,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "© 2024 Jurnalku. All rights reserved.",
                        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}