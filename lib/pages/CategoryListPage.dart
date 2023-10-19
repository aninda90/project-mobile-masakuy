import 'package:masakuy/data/data.dart';
import 'package:masakuy/pages/DetailPage.dart';
import 'package:flutter/material.dart';

class CategoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      // Kembali ke HomePage
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Daftar Resep",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                height: 550, // Set the height of the GridView
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.6,
                    crossAxisCount: 2, // 3 gambar dalam satu baris
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    Masakuy masak = masakList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(masak: masak),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 17, 17, 17),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF292B37).withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 6,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.network(
                                masak.cover,
                                height: 200,
                                width: double
                                    .infinity, // Lebar gambar mengisi seluruh kontainer
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    masak.judul,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    masak.kategori,
                                    style: TextStyle(
                                      color: Colors.white54,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
