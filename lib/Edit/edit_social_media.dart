import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_trio/profil_page.dart';

class EditSocialMedia extends StatefulWidget {
  const EditSocialMedia({super.key});

  @override
  State<EditSocialMedia> createState() => _EditSocialMediaState();
}

class _EditSocialMediaState extends State<EditSocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
        title: Text("Edit Media Sosial", style: GoogleFonts.lato(fontSize: 20 , fontWeight: FontWeight.w600)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.edit_square, size: 20, color: Colors.grey[600],),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hint: Text("Masukkan Nama Media Sosial", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Icon(Icons.delete, size: 20, color: Colors.red[600],),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hint: Text("Masukkan Link Media Sosial", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),
                      ),
                    ],
                  )
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.edit_square, size: 20, color: Colors.grey[600],),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hint: Text("Masukkan Nama Media Sosial", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Icon(Icons.delete, size: 20, color: Colors.red[600],),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hint: Text("Masukkan Link Media Sosial", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),
                      )
                    ],
                  )
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: (){}, 
                      child: Text("Tambah Media Sosial", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage(
                          page: 0,
                        )));
                      }, 
                      child: Text("Simpan", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600)),
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