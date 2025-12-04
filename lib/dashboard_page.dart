import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

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
            scrolledUnderElevation: 0,
            elevation: 0, // agar tidak ada shadow default
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.home),
                const SizedBox(width: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Muhammad Ryan Dwiyanto",
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          "PPLG XII-3",
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    const CircleAvatar(
                      radius: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Stack(
              children: [
                // BACKGROUND IMAGE
                Positioned.fill(
                  child: SvgPicture.asset(
                    "assets/images/bgsecondary.svg",
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Selamat Datang di Jurnalku",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Solusi cerdas untuk memantau perkembangan kompetensi siswa secara efektif",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          softWrap: true,
                          textAlign: TextAlign.center
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 80),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apa itu Jurnalku?",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 80),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.house_outlined, color: Colors.blue[900], size: 50,),
                      SizedBox(height: 30,),
                      Text(
                        "Dirancang Khusus",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700],
                          ),
                        ),
                        softWrap: true,
                        textAlign: TextAlign.center
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 80),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: Colors.blue[900], size: 50,),
                      SizedBox(height: 30,),
                      Text(
                        "Efektif",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Memudahkan siswa dan guru melihat perkembangan secara real-time.",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700],
                          ),
                        ),
                        softWrap: true,
                        textAlign: TextAlign.center
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 80),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.school_outlined, color: Colors.blue[900], size: 50,),
                      SizedBox(height: 30,),
                      Text(
                        "Terintegrasi",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700],
                          ),
                        ),
                        softWrap: true,
                        textAlign: TextAlign.center
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Text("MENU APLIKASI", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey[700]),),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.only( bottom: 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue[100],
                                  child: Icon(Icons.person_2_outlined, color: Colors.blue[900], size: 24,),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Profil", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),),
                                    Text("Lihat dan kelola profilmu di sini.", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700]), softWrap: true,),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16,),
                          ],
                        )
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue[100],
                                  child: Icon(Icons.badge_outlined, color: Colors.blue[900], size: 24,),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Portofolio", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),),
                                    Text("Lihat dan kelola portofolio kompetensimu di sini.", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700]), softWrap: true,),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16,),
                          ],
                        )
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.only(top: 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue[100],
                                  child: Icon(Icons.star_border_sharp, color: Colors.blue[900], size: 24,),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Sertifikat", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),),
                                    Text("Lihat dan unduh sertifikat kompetensimu di sini.", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700]), softWrap: true,),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16,),
                          ],
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.only( bottom: 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue[100],
                                  child: Icon(Icons.menu_book_outlined, color: Colors.blue[900], size: 24,),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Jurnal Pembiasaan", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),),
                                    Text("Catat dan pantau kegiatan pembiasaan harianmu.", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700]), softWrap: true,),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16,),
                          ],
                        )
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue[100],
                                  child: Icon(Icons.person_2_outlined, color: Colors.blue[900], size: 24,),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Permintaan Aksi", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),),
                                    Text("Lihat teman yang mengajukan permintaan saksi.", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700]), softWrap: true,),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16,),
                          ],
                        )
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue[100],
                                  child: Icon(Icons.insert_chart_outlined_sharp, color: Colors.blue[900], size: 24,),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Progres", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),),
                                    Text("Lihat kemajuan kompetensi dan pencapaian\nbelajarmu.", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700]), softWrap: true,),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16,),
                          ],
                        )
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.only(top: 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue[100],
                                  child: Icon(Icons.star_border_sharp, color: Colors.blue[900], size: 24,),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Sertifikat", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),),
                                    Text("Lihat dan unduh sertifikat kompetensimu di sini.", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700]), softWrap: true,),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16,),
                          ],
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Text("STATISTIK KOMPETENSI", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey[700]),),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Materi Diselesaikan", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[700]),),
                              Text("0", style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.grey[700]),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.green[100],
                            child: Icon(Icons.check_circle_outline, color: Colors.green[900], size: 24,), 
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Selesai", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.green[700])),
                  ]),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Materi Diselesaikan", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[700]),),
                              Text("0", style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.grey[700]),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.green[100],
                            child: Icon(Icons.check_circle_outline, color: Colors.green[900], size: 24,), 
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Selesai", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.green[700])),
                  ]),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Materi Diselesaikan", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[700]),),
                              Text("0", style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.grey[700]),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.green[100],
                            child: Icon(Icons.check_circle_outline, color: Colors.green[900], size: 24,), 
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Selesai", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.green[700])),
                  ]),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Materi Diselesaikan", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[700]),),
                              Text("0", style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.grey[700]),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.green[100],
                            child: Icon(Icons.check_circle_outline, color: Colors.green[900], size: 24,), 
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Selesai", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.green[700])),
                  ]),
                ),
                SizedBox(height: 40,),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Progress Akademik", style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Selesai", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
                          Text("3", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Pending", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
                          Text("1", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Belum", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
                          Text("2", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hari ini", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
                          Text("0", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
                        ],
                      ),
                    ]
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Progress Akademik", style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blue[800]),),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Intallasi Postman", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green[50],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text("Approved", style: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.green),),
                          ),
                        ]
                      ),
                      Divider(color: Colors.grey[400], thickness: 1,),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Main Postman", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green[50],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text("Approved", style: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.green),),
                          ),
                        ]
                      ),
                      Divider(color: Colors.grey[400], thickness: 1,),
                      SizedBox(height: 10,),
                      Center(
                        child: Text(
                          "Lihat semua aktivitas",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue[800],
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
            child: Text("© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue[900]), textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}