import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProject extends StatelessWidget {
  const DetailProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Detail Project",
                style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jurnalku",
                      style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10,),              
                    Text(
                      "Oleh Muhammad Ryan Dwiyanto",
                      style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/Banner-Web.jpg",
                        width: double.infinity,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      "Deskripsi Project",
                      style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "Contoh Tampilan dari Jurnalku Menggunakan Flutter",
                      style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "1 Bulan",
                              style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              "Waktu Pengerjaan",
                              style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ]
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Nov 23",
                              style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              "Tanggal Dibuat",
                              style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ]
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
      )),
    );
  }
}