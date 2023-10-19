import 'package:masakuy/data/data.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Masakuy masak;

  DetailPage({required this.masak});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.network(
              masak.sampul,
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height : 215),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child:Text(
                              masak.judul,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      width: double.infinity,
                      height: 365,
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              masak.resep,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
