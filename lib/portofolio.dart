import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Portofolio extends StatefulWidget {
  const Portofolio({super.key});

  @override
  State<Portofolio> createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  String? nilaiTerpilih;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.home_outlined, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ayu Sekar Azzkya",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "PPLG XII-3",
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              "Catatan Sikap Saya",
              style: GoogleFonts.inter(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Lihat catatan sikap dan perilaku yang telah dilaporkan",
              style: GoogleFonts.inter(fontSize: 15, color: Colors.black87),
            ),

            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF7ED),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFFCD34D)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.warning_amber_rounded,
                    color: Color(0xFFB45309),
                    size: 28,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Jika Anda merasa ada catatan yang tidak sesuai atau keliru, silakan hubungi guru jurusan.",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: const Color(0xFFB45309),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            kotakData(
              "Total Catatan",
              "0",
              Icons.insert_drive_file_outlined,
              Colors.blue,
            ),

            const SizedBox(height: 20),

            kotakData("Dalam Perbaikan", "0", Icons.bolt, Colors.amber),

            const SizedBox(height: 20),

            kotakData(
              "Sudah Berubah",
              "0",
              Icons.insert_drive_file_outlined,
              Colors.green,
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 3,
              margin: const EdgeInsets.all(12),
              child: ExpansionTile(
                title: const Text("Catatan"),
                childrenPadding: const EdgeInsets.all(16),
                children: [
                  tampilData("No", ""),
                  tampilData("Kategori", ""),
                  tampilData("Catatan", ""),
                  tampilData("Status", ""),
                  tampilData("Kategori", ""),
                  tampilData("Update Terakhir", ""),
                  tampilData("Aksi", ""),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget kotakData(String judul, String angka, IconData icon, Color warna) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey, width: 0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  angka,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: warna.withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 30, color: warna),
          ),
        ],
      ),
    );
  }

  Widget tampilData(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120, // atur lebar label agar semua sejajar
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          const Text(
            " : ",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Expanded(child: Text(value, style: const TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}
