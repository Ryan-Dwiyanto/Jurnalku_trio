import 'package:flutter/material.dart';
import 'package:jurnalku_trio/materi_page.dart';
import 'package:jurnalku_trio/pekerjaan_page.dart';

class JurnalPembiasaan extends StatelessWidget {
  const JurnalPembiasaan({super.key});

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

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jurnal Pembiasaan",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "DESEMBER - 2025",
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.w200,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                // width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.blue[600]!),
                ),
                child: Text(
                  "<-  Bulan Sebelumnya",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "A. Pembiasaan Harian",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Sudah Diisi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(width: 15),

                  Icon(
                    Icons.circle,
                    color: Color(0xFFC4C4C4),
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Belum Diisi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(width: 10),

                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Tidak Diisi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                // padding: const EdgeInsets.all(16),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: 23,
                  itemBuilder: (context, index) {
                    final day = index + 1;
                    final isDisabled = day == 1 || day == 2 || day == 4 || day == 5;
                    
                    return Container(
                      decoration: BoxDecoration(
                        color: isDisabled ? Colors.grey[300] : Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: Text(
                              day.toString().padLeft(2, '0'),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: isDisabled ? Colors.grey[500] : Colors.black87,
                              ),
                            ),
                          ),
                          if (isDisabled)
                            Positioned(
                              top: 4,
                              right: 4,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.red[400],
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Text(
                "B. Pekerjaan yang dilakukan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                // height: 200,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Card(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      elevation: 2,
                      child: ExpansionTile(
                        title: Text(
                          "Pekerjaan Project Flutter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text("Tanggal, 12 Januari 2025"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          // tampilData("Pekerjaan", "Project Flutter"),
                          tampilData("Tanggal", "12 Januari 2025"),
                          tampilData("Saksi", "Arya"),
                          tampilData("Status", "Pending"),
                        ],
                      ),
                    ),
                
                    Card(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      elevation: 2,
                      child: ExpansionTile(
                        title: Text(
                          "Pekerjaan Project Laravel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text("Tanggal, 13 Januari 2025"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          // tampilData("Pekerjaan", "Project Flutter"),
                          tampilData("Tanggal", "13 Januari 2025"),
                          tampilData("Saksi", "Husni"),
                          tampilData("Status", "Pending"),
                        ],
                      ),
                    ),

                    Card(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      elevation: 2,
                      child: ExpansionTile(
                        title: Text(
                          "Pekerjaan Project Laravel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text("Tanggal, 13 Januari 2025"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          // tampilData("Pekerjaan", "Project Flutter"),
                          tampilData("Tanggal", "13 Januari 2025"),
                          tampilData("Saksi", "Husni"),
                          tampilData("Status", "Pending"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(8),
                    // border: Border.all(color: Colors.),
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Tambah Pekerjaan",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PekerjaanPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Text(
                          "Lainnya",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              Text(
                "C. Materi yang dipelajari",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                // height: 200,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Card(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      elevation: 2,
                      child: ExpansionTile(
                        title: Text(
                          "Materi Tentang Widget Flutter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text("Klik untuk melihat detail"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          // tampilData("Pekerjaan", "Project Flutter"),
                          tampilData("Tanggal", "12 Januari 2025"),
                          tampilData("Status", "Pending"),
                        ],
                      ),
                    ),

                    Card(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      elevation: 2,
                      child: ExpansionTile(
                        title: Text(
                          "Materi Tentang Controller Laravel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text("Klik untuk melihat detail"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          // tampilData("Pekerjaan", "Project Flutter"),
                          tampilData("Tanggal", "13 Januari 2025"),
                          tampilData("Status", "Pending"),
                        ],
                      ),
                    ),

                    Card(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      elevation: 2,
                      child: ExpansionTile(
                        title: Text(
                          "Materi Tentang Controller Laravel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text("Klik untuk melihat detail"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          // tampilData("Pekerjaan", "Project Flutter"),
                          tampilData("Tanggal", "13 Januari 2025"),
                          tampilData("Status", "Pending"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(8),
                      // border: Border.all(color: Colors.),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Tambah Materi",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MateriPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Text(
                          "Lainnya",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "A : Approved",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(width: 15),

                  Icon(
                    Icons.circle,
                    color: Colors.yellow[700],
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "P : Pending",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(width: 10),

                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "R : Revisi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              Text(
                "D. Poin",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                elevation: 2,
                child: ExpansionTile(
                  title: Text(
                    "M1",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  // subtitle: Text("Klik untuk melihat detail"),
                  childrenPadding: EdgeInsets.all(16),
                  children: [
                    // tampilData("Pekerjaan", "Project Flutter"),
                    tampilData("Project/Progress Belajar", "0"),
                    tampilData("Pertanyaan/laporan materi", "0"),
                    tampilData("Jumlah poin minggu ini", "0"),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                elevation: 2,
                child: ExpansionTile(
                  title: Text(
                    "M2",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  // subtitle: Text("Klik untuk melihat detail"),
                  childrenPadding: EdgeInsets.all(16),
                  children: [
                    // tampilData("Pekerjaan", "Project Flutter"),
                    tampilData("Project/Progress Belajar", "0"),
                    tampilData("Pertanyaan/laporan materi", "0"),
                    tampilData("Jumlah poin minggu ini", "0"),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                elevation: 2,
                child: ExpansionTile(
                  title: Text(
                    "M3",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  // subtitle: Text("Klik untuk melihat detail"),
                  childrenPadding: EdgeInsets.all(16),
                  children: [
                    // tampilData("Pekerjaan", "Project Flutter"),
                    tampilData("Project/Progress Belajar", "0"),
                    tampilData("Pertanyaan/laporan materi", "0"),
                    tampilData("Jumlah poin minggu ini", "0"),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                elevation: 2,
                child: ExpansionTile(
                  title: Text(
                    "M4",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  // subtitle: Text("Klik untuk melihat detail"),
                  childrenPadding: EdgeInsets.all(16),
                  children: [
                    // tampilData("Pekerjaan", "Project Flutter"),
                    tampilData("Project/Progress Belajar", "0"),
                    tampilData("Pertanyaan/laporan materi", "0"),
                    tampilData("Jumlah poin minggu ini", "0"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(8),
                  // border: Border.all(color: Colors.),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jumlah poin ceklist pembiasaan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      "0",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(8),
                  // border: Border.all(color: Colors.),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jumlah keseluruhan poin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      "0",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

Widget tampilData(String labelData, String value) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          child: Text(
            labelData,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(value)
          ),
        ),
      ],
    ),
  );
}