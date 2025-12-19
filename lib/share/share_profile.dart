import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_trio/profil_page.dart';

class ShareProfile extends StatefulWidget {
  const ShareProfile({super.key});

  @override
  State<ShareProfile> createState() => _ShareProfileState();
}

class _ShareProfileState extends State<ShareProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Bagikan Profile",
                  style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10,),
                Text(
                  "Link Profile",
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
                      Icon(Icons.link, color: Colors.grey[600],),
                      const SizedBox(width: 10,),
                      Text("https://jurnalku.com", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Text(
                  "Atau Bagikan Melalui",
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/733/733585.png", // WhatsApp
                        width: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/733/733547.png", // Facebook
                        width: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Image.network("https://cdn-icons-png.flaticon.com/512/174/174855.png", width: 40,),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage(
                      page: 0,
                    )));
                  }, 
                  child: Text("Kembali", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}