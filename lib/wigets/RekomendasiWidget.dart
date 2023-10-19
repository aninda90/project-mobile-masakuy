import 'package:masakuy/data/data.dart';
import 'package:masakuy/pages/DetailPage.dart';
import 'package:flutter/material.dart';

class RekomendasiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rekomendasi",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: Color(0xFFD65A00),
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 300, // Set the height of the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: masakList.length,
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
                  width: 190,
                  margin: EdgeInsets.only(left: 10),
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
                          width: 200,
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
                            SizedBox(height: 5),
                            Text(
                              masak.kategori,
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                Text(
                                  "${masak.fav}",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            )
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
      ],
    );
  }
}
