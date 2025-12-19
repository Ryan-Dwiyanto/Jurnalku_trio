import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_trio/profil_page.dart';

class InputCertificate extends StatefulWidget {
  const InputCertificate({super.key});

  @override
  State<InputCertificate> createState() => _InputCertificateState();
}

class _InputCertificateState extends State<InputCertificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
        title: Text("Tambah Sertifikat", style: GoogleFonts.lato(fontSize: 20 , fontWeight: FontWeight.w600)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama Sertifikat",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text("Masukkan Nama Sertifikat", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  "Deskripsi (Opsional)",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10,),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text("Deskripsi Sertifikat Anda", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  "File Sertifikat",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.upload_file, color: Colors.grey[600],),
                      const SizedBox(width: 10,),
                      Text("Upload Sertifikat", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                    ]
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage()));
                      }, 
                      child: Text("Batal", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),)
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        backgroundColor: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: (){}, 
                      child: Text("Simpan", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),)
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}