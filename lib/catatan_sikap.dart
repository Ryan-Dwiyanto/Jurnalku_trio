import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_trio/catatan_detail.dart';
import 'package:jurnalku_trio/dashboard_page.dart';

class CatatanSikapData {
  final int no;
  final String kategori;
  final String catatan;
  final String status;
  final String dilaporkan;
  final String updateTerakhir;

  CatatanSikapData({
    required this.no,
    required this.kategori,
    required this.catatan,
    required this.status,
    required this.dilaporkan,
    required this.updateTerakhir,
  });
}

// DUMMY DATA
final List<CatatanSikapData> dummyCatatan = [
  CatatanSikapData(
    no: 1,
    kategori: 'Pelanggaran Berat',
    catatan:
        'Datang terlambat 15 menit tanpa izin dan tidak memberikan keterangan yang jelas.',
    status: 'Dalam Perbaikan',
    dilaporkan: '2025-10-01',
    updateTerakhir: '2025-10-05',
  ),
  CatatanSikapData(
    no: 2,
    kategori: 'Pujian',
    catatan:
        'Membantu membersihkan laboratorium setelah jam pelajaran, menunjukkan inisiatif yang baik.',
    status: 'Sudah Berubah',
    dilaporkan: '2025-09-15',
    updateTerakhir: '2025-09-20',
  ),
  CatatanSikapData(
    no: 3,
    kategori: 'Pelanggaran Sedang',
    catatan:
        'Menggunakan ponsel saat kegiatan belajar mengajar berlangsung meskipun sudah diperingatkan.',
    status: 'Baru',
    dilaporkan: '2025-11-28',
    updateTerakhir: '2025-11-28',
  ),
];

class CatatanSikap extends StatelessWidget {
  CatatanSikap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int totalCatatan = dummyCatatan.length;
    final int dalamPerbaikan = dummyCatatan
        .where((c) => c.status == 'Dalam Perbaikan')
        .length;
    final int sudahBerubah = dummyCatatan
        .where((c) => c.status == 'Sudah Berubah')
        .length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage()));
        }, icon: Icon(Icons.home_outlined, color: Colors.black)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Ayu Sekar Azzkya",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
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
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Utama
            Text(
              'Catatan Sikap Saya',
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Lihat catatan sikap dan perilaku yang telah dilaporkan',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 20),

            WarningCard(),
            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: StatusCard(
                    title: 'Total Catatan',
                    count: totalCatatan,
                    icon: Icons.description_outlined,
                    iconColor: Colors.blue.shade300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),

            Row(
              children: [
                Expanded(
                  child: StatusCard(
                    title: 'Dalam Perbaikan',
                    count: dalamPerbaikan,
                    icon: Icons.flash_on,
                    iconColor: Colors.amber,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),

            Row(
              children: [
                Expanded(
                  child: StatusCard(
                    title: 'Sudah Berubah',
                    count: sudahBerubah,
                    icon: Icons.check_circle_outline,
                    iconColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),

            Text(
              'Daftar Catatan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),

            CatatanList(),
          ],
        ),
      ),
    );
  }
}

class WarningCard extends StatelessWidget {
  WarningCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.amber.shade300),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.warning_amber_rounded,
            size: 28,
            color: Colors.orange.shade700,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Perhatian',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade700,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Jika Anda merasa ada catatan yang tidak sesuai atau keliru, silakan hubungi guru jurusan untuk mengajukan klarifikasi.',
                  style: TextStyle(fontSize: 14, color: Colors.orange.shade700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  final String title;
  final int count;
  final IconData icon;
  final Color iconColor;

  StatusCard({
    Key? key,
    required this.title,
    required this.count,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          height: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    count.toString(),
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: iconColor.withOpacity(0.15),
                    ),
                    child: Icon(icon, color: iconColor, size: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CatatanList extends StatelessWidget {
  CatatanList({Key? key}) : super(key: key);

  Color _statusColor(String status) {
    switch (status) {
      case 'Dalam Perbaikan':
        return Colors.orange;
      case 'Sudah Berubah':
        return Colors.green;
      default:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (dummyCatatan.isEmpty) {
      return Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              Icon(Icons.check_circle_outline, size: 80, color: Colors.grey),
              SizedBox(height: 10),
              Text(
                'Tidak ada catatan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Belum ada catatan sikap yang dilaporkan',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: dummyCatatan.length,
      itemBuilder: (context, index) {
        final cat = dummyCatatan[index];
        final statusColor = _statusColor(cat.status);

        return Card(
          elevation: 1,
          margin: EdgeInsets.only(bottom: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cat.kategori,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: statusColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.circle, size: 8, color: statusColor),
                          SizedBox(width: 6),
                          Text(
                            cat.status,
                            style: TextStyle(
                              color: statusColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  'Dilaporkan: ${cat.dilaporkan}',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),

                Divider(height: 20),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CatatanDetailPage(catatan: cat),
                        ),
                      );
                    },
                    icon: Icon(Icons.remove_red_eye_outlined, size: 18),
                    label: Text("Lihat Detail"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
