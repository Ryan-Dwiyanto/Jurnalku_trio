import 'package:flutter/material.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C. Materi yang dipelajari", 
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
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
                  subtitle: Text("Klik untuk melihat detail"),
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
                  subtitle: Text("Klik untuk melihat detail"),
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
                  subtitle: Text("Klik untuk melihat detail"),
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