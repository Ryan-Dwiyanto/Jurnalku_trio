import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_trio/profil_page.dart';

class EditPortofolio extends StatefulWidget {
  const EditPortofolio({super.key});

  @override
  State<EditPortofolio> createState() => _EditPortofolioState();
}

class _EditPortofolioState extends State<EditPortofolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
        title: Text("Edit Portofolio", style: GoogleFonts.lato(fontSize: 20 , fontWeight: FontWeight.w600)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Judul Portofolio",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text("Masukkan Judul Portofolio", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  "Deskripsi",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10,),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text("Deskripsi Portofolio Anda", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  "Durasi Pengerjaan",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text("Masukkan Durasi Pengerjaan", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  "Link Portofolio",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text("Masukkan Link Portofolio", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                  ),
                ),
                Text("Link ke GitHub, demo live, atau repository portfolio Anda", style: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                const SizedBox(height: 20,),
                Text(
                  "Gambar Portofolio",
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
                      Icon(Icons.add_photo_alternate_outlined, size: 20, color: Colors.grey[600],),
                      const SizedBox(width: 10,),
                      Text("Upload Gambar", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
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