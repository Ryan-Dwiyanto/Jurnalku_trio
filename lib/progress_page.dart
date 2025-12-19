import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // warna shadow
                blurRadius: 6, // seberapa blur
                offset: const Offset(0, 3), // posisi shadow (0 = center horizontally, 3 = downward)
              ),
            ],
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0,
            scrolledUnderElevation: 0,

            title: Row(
              children: const [
                Icon(Icons.home),
                SizedBox(width: 10),
              ],
            ),

            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Muhammad Ryan Dwiyanto",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "PPLG XII-3",
                          style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Builder(
                      builder: (context) => GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openEndDrawer(); // ✅
                        },
                        child: const CircleAvatar(radius: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard"),
              onTap: () {
                Navigator.pushNamed(context, "/dashboard");
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_outlined),
              title: Text("Profile"),
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
            ListTile(
              leading: Icon(Icons.explore_outlined),
              title: Text("Jelajahi"),
              onTap: () {
                Navigator.pushNamed(context, "/explore");
              },
            ),
            Divider(color: Colors.grey, height: 1),
            ListTile(
              leading: Icon(Icons.menu_book_sharp),
              title: Text("Jurnal Pembiasaan"),
              onTap: () {
                Navigator.pushNamed(context, "/jurnal-pembiasaan");
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text("Permintaan Saksi"),
              onTap: () {
                Navigator.pushNamed(context, "/permmintaan-saksi");
              },
            ),
            ListTile(
              leading: Icon(Icons.stacked_line_chart_sharp),
              title: Text("Progress"),
              onTap: () {
                Navigator.pushNamed(context, "/progress");
              },
            ),
            ListTile(
              leading: Icon(Icons.warning_amber_outlined),
              title: Text("Catatan Sikap"),
              onTap: () {
                Navigator.pushNamed(context, "/catatan-sikap");
              },
            ),
            Divider(color: Colors.grey, height: 1),
            ListTile(
              leading: Icon(Icons.menu_book_sharp),
              title: Text("Panduan Pengguna"),
              onTap: () {
                Navigator.pushNamed(context, "/panduan");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text("Pengaturan Akun"),
              onTap: () {
                Navigator.pushNamed(context, "/pengaturan");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("Log Out"),
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
            ),
          ],
        ),
      ),

      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Progress Belajar",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
                  style: TextStyle(
                    fontSize: 17,
                    // fontWeight: FontWeight.w200,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Thursday, 20 November 2025",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  // height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Pengajuan",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                  ),
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue[50],
                              child: Icon(
                                Icons.check_circle_outline,
                                color: Colors.blue[600],
                                size: 25,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                              color: Colors.blue[600],
                            ),
                            Text(
                              " Semua status",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  // height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Halaman Ini",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                  ),
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green[50],
                              child: Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.green[400],
                                size: 25,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                              color: Colors.green[400],
                            ),
                            Text(
                              " Data ditampilkan",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green[400],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  // height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Status Pending",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                  ),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.orange[50],
                              child: Icon(
                                Icons.access_time,
                                color: Colors.orange[600],
                                size: 25,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                              color: Colors.orange[600],
                            ),
                            Text(
                              " Perlu validasi",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.orange[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  // height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Halaman",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                  ),
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.purple[50],
                              child: Icon(
                                Icons.workspace_premium_outlined,
                                color: Colors.purple[600],
                                size: 25,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                              color: Colors.purple[600],
                            ),
                            Text(
                              " Semua status",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.purple[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                  buildCardManual("Project Work"),
                  SizedBox(height: 20),
                  buildCardManual("Mobile Apps"),
                  SizedBox(height: 20),
                  buildCardManual("UKK (Ujian Kompetensi Keahlian)"),
                  SizedBox(height: 20),
                  buildCardManual("GIM"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCardManual(String title) {
  return StatefulBuilder(
    builder: (context, setState) {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Kompetensi dan materi pembelajaran",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // EXPANSION TILE 1
            Card(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              elevation: 2,
              child: ExpansionTile(
                title: Text("Detail Kompetensi 1"),
                subtitle: Text("Klik untuk melihat detail"),
                childrenPadding: EdgeInsets.all(16),
                children: [
                  tampilData("Guru", "Bapak Andi"),
                  tampilData("Tanggal", "12 Januari 2025"),
                  tampilData("Status", "Selesai"),
                  tampilData("Catatan Guru", "Bagus, lanjutkan"),
                  tampilData("Catatan Siswa", "Sudah dipahami"),
                ],
              ),
            ),

            Card(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              elevation: 2,
              child: ExpansionTile(
                title: Text("Detail Kompetensi 2"),
                subtitle: Text("Klik untuk melihat detail"),
                childrenPadding: EdgeInsets.all(16),
                children: [
                  tampilData("Guru", "Ibu Rina"),
                  tampilData("Tanggal", "18 Januari 2025"),
                  tampilData("Status", "Belum Selesai"),
                  tampilData("Catatan Guru", "Perlu ditingkatkan"),
                  tampilData("Catatan Siswa", "Masih mencoba memahami"),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget tampilData(String labelData, String value) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 130,
          child: Text(
            labelData,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Text(value),
        ),
      ],
    ),
  );
}