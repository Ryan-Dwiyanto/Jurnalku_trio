import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Muhammad Ilham Awaludin",
                      style: TextStyle(
                        // color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "PPLG XII-3",
                      style: TextStyle(
                        // color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ]
                ),
              ),
              SizedBox(width: 10),
              // Gambar profil di kanan
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/user.png",
                    width: 35,
                    height: 35,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
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