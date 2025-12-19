import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jurnalku_trio/Edit/edit_certificate.dart';
import 'package:jurnalku_trio/Edit/edit_portofolio.dart';
import 'package:jurnalku_trio/Edit/edit_social_media.dart';
import 'package:jurnalku_trio/Input/input_certificate.dart';
import 'package:jurnalku_trio/Input/input_portofolio.dart';
import 'package:jurnalku_trio/constant/text_constants.dart';
import 'package:jurnalku_trio/detail/detail_project.dart';
import 'package:jurnalku_trio/share/share_profile.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

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

      body: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // bagian header profil kamu
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/wikrama-mewah.png",
                        fit: BoxFit.cover,
                        height: 140,
                        width: double.infinity,
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 140),
                        padding: EdgeInsets.only(
                            top: 60, left: 20, right: 20, bottom: 30),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Muhammad Ryan Dwiyanto",
                                    style: GoogleFonts.lato(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(height: 5),
                                Text(
                                  "12309898 | PPLG XII-3 | Wik 4",
                                  style: GoogleFonts.lato(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                backgroundColor: Colors.blue[900],
                                elevation: 0,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ShareProfile(),
                                  ),
                                );
                              },
                              child: Icon(Icons.share_outlined,
                                  size: 18, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(top: 80, left: 19, child: CircleAvatar(radius: 50)),
                      Positioned(
                        top: 150,
                        left: 85,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue[900],
                          child: Icon(Icons.camera_alt_outlined,
                              color: Colors.white, size: 15),
                        ),
                      ),
                    ],
                  ),

                  // TabBar tetap di atas, tidak ikut scroll konten
                  TabBar(
                    controller: tabController,
                    labelColor: Colors.indigo.shade500,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: TextConstants.titleTab_1, icon: Icon(Icons.search)),
                      Tab(text: TextConstants.titleTab_2, icon: Icon(Icons.badge_outlined)),
                      Tab(text: TextConstants.titleTab_3, icon: Icon(Icons.star_border_outlined)),
                    ],
                  ),
                ],
              ),
            ),
          ];
        },
        
        // Konten TabBarView kini bisa scroll bebas
        body: TabBarView(
          controller: tabController,
          children: [
            FirstScreen(tabController: tabController),
            SecondScreen(tabController: tabController),
            ThirdScreen(tabController: tabController),
          ],
              ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20),
      children: [
        // Portofolio Terbaru
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Portofolio Terbaru",
                  style: GoogleFonts.lato(
                      fontSize: 14, fontWeight: FontWeight.w600)),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => InputPortofolio()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.add, size: 10, color: Colors.black),
                        SizedBox(width: 5),
                        Text("Tambah",
                            style: GoogleFonts.lato(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Text("|", style: TextStyle(color: Colors.grey.shade300, fontSize: 18)),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () => tabController.animateTo(1),
                    child: Text("Lihat Semua",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 14)),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Banner-Web.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Jurnalku",
                  style: GoogleFonts.lato(
                      fontSize: 14, fontWeight: FontWeight.w600)),
              Text("Contoh Tampilan dari Jurnalku Menggunakan Flutter",
                  style: GoogleFonts.lato(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[900])),
              Row(
                children: [
                  Icon(Icons.access_time, size: 12),
                  SizedBox(width: 5),
                  Text("1 Bulan",
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.ios_share_rounded, size: 12),
                  SizedBox(width: 5),
                  Text("Lihat Project",
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[900],
                      )),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Lihat Detail",
                      style: GoogleFonts.lato(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[900],
                    )
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.arrow_forward, size: 13, color: Colors.blue[900]),
                ],
              )
            ],
          ),
        ),
        //Sertifikat
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Sertifikat Terbaru",
                  style: GoogleFonts.lato(
                      fontSize: 14, fontWeight: FontWeight.w600)),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => InputCertificate()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.add, size: 10, color: Colors.black),
                        SizedBox(width: 5),
                        Text("Tambah",
                            style: GoogleFonts.lato(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Text("|", style: TextStyle(color: Colors.grey.shade300, fontSize: 18)),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () => tabController.animateTo(2),
                    child: Text("Lihat Semua",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 14)),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Banner-Web.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Sertifikat PKL",
                  style: GoogleFonts.lato(
                  fontSize: 14, fontWeight: FontWeight.w600)
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text("Lihat Detail",
                      style: GoogleFonts.lato(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[900],
                    )
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.arrow_forward, size: 13, color: Colors.blue[900]),
                ],
              )
            ],
          ),
        ),
        //Dokumen
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Text("Dokumen Terbaru",
              style: GoogleFonts.lato(
                  fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //CV
              Text("Curriculum Vitae", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600)),
              SizedBox(height: 5),
              Text("Dokumen CV siswa", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade900)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        elevation: 0,
                        backgroundColor: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {}, 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add, size: 12, color: Colors.white),
                          SizedBox(width: 10),
                          Text("Lihat CV", style: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      elevation: 0,
                      backgroundColor: Colors.grey.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {}, 
                    child: Icon(Icons.download, size: 12, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Divider(color: Colors.grey.shade300, thickness: 1),
              // Kartu Pelajar
              SizedBox(height: 15),
              Text("Kartu Pelajar", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600)),
              SizedBox(height: 5),
              Text("Kartu Identitas Siswa", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade900)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        elevation: 0,
                        backgroundColor: Colors.green[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {}, 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add, size: 12, color: Colors.white),
                          SizedBox(width: 10),
                          Text("Lihat Kartu Pelajar", style: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      elevation: 0,
                      backgroundColor: Colors.grey.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {}, 
                    child: Icon(Icons.download, size: 12, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.info, size: 14, color: Colors.yellow[900]),
                  SizedBox(width: 10),
                  Text("Kartu pelajar dapat dilihat oleh anda dan guru",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.yellow[900],
                    )
                  ),
                ]
              )
            ],
          ),
        ),
        // Media Sosial
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Media Sosial",
                  style: GoogleFonts.lato(
                      fontSize: 14, fontWeight: FontWeight.w600)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  elevation: 0,
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.grey.shade300),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditSocialMedia()));
                },
                child: Row(
                  children: [
                    Icon(Icons.edit, size: 14, color: Colors.black),
                    SizedBox(width: 5),
                    Text("Edit",
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey.shade300,
                        child: Icon(Icons.link, size: 20, color: Colors.grey.shade900),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Facebook", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600)),
                          Text("facebook.com/username", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blue[900])),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.ios_share_rounded, size: 14, color: Colors.black),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey.shade300,
                        child: Icon(Icons.link, size: 20, color: Colors.grey.shade900),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Facebook", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600)),
                          Text("facebook.com/username", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blue[900])),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.ios_share_rounded, size: 14, color: Colors.black),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey.shade300,
                        child: Icon(Icons.link, size: 20, color: Colors.grey.shade900),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Facebook", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600)),
                          Text("facebook.com/username", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blue[900])),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.ios_share_rounded, size: 14, color: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class SecondScreen extends StatelessWidget {
  const SecondScreen({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                elevation: 0,
                backgroundColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputPortofolio()));
              }, 
              child: Row(
                children: [
                  Icon(Icons.add_circle_outline, size: 16, color: Colors.white),
                  SizedBox(width: 5),
                  Text("Tambah Portofolio", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white))
                ]
              )
            )
          ],
        ),
        SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(15),
          margin: EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 175,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/Banner-Web.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 15),
              Text("Jurnalku", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)),
              SizedBox(height: 5),
              Text("Contoh Tampilan dari Jurnalku Menggunakan Flutter", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey.shade700)),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.access_time, size: 16, color: Colors.grey.shade700),
                  SizedBox(width: 5),
                  Text("1 Bulan", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey.shade700)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      elevation: 0,
                      backgroundColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProject()));
                    }, 
                    child: Row(
                      children: [
                        Icon(Icons.arrow_forward_ios_sharp, size: 16, color: Colors.white),
                        SizedBox(width: 5),
                        Text("Lihat Detail", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white)),
                      ]
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      elevation: 0,
                      backgroundColor: Colors.grey[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: (){}, 
                    child: Row(
                      children: [
                        Icon(Icons.ios_share_sharp, size: 16, color: Colors.white),
                        SizedBox(width: 5),
                        Text("Live Demo", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white)),
                      ]
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey.shade300, thickness: 1),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Aksi", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey[700])),
                  Spacer(),
                  IconButton(
                    iconSize: 15, 
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditPortofolio()));
                    }, 
                    icon: Icon(Icons.edit),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    iconSize: 15, 
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.red[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: (){}, 
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                elevation: 0,
                backgroundColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputCertificate()));
              }, 
              child: Row(
                children: [
                  Icon(Icons.add_circle_outline, size: 16, color: Colors.white),
                  SizedBox(width: 5),
                  Text("Tambah Sertifikat", style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white))
                ]
              )
            )
          ],
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/Banner-Web.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sertifikat PKL", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)),
                    SizedBox(height: 10),
                    Divider(color: Colors.grey.shade300, thickness: 1),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Aksi", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey[700])),
                        Spacer(),
                        IconButton(
                          iconSize: 15, 
                          color: Colors.white,
                          padding: EdgeInsets.all(10),
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.blue[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EditCertificate()));
                          }, 
                          icon: Icon(Icons.edit),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          iconSize: 15, 
                          color: Colors.white,
                          padding: EdgeInsets.all(10),
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.red[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: (){}, 
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}