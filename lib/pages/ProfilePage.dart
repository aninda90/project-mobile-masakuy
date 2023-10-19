import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                    onTap: () {
                      // Kembali ke HomePage
                      Navigator.pop(context);
                    },
                    child: Padding(padding:  EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    ),
                  ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 600,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 125,
                            width: 125,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile.jpg'),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 250),
                            child: const Text(
                              "Nama",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            style: const TextStyle(
                              fontFamily: 'Poppins Light',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Aninda Rizky Hartanti",
                              hintText: "Ubah Nama",
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 18,
                              ),
                              hintStyle: const TextStyle(
                                fontFamily: 'Poppins Light',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              labelStyle: const TextStyle(
                                color: Colors
                                    .white, // Ubah label text menjadi warna putih
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 265),
                            child: const Text(
                              "NIM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            style: const TextStyle(
                              fontFamily: 'Poppins Light',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "210605110090",
                              hintText: "Ubah NIM",
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 18,
                              ),
                              hintStyle: const TextStyle(
                                fontFamily: 'Poppins Light',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              labelStyle: const TextStyle(
                                color: Colors
                                    .white, // Ubah label text menjadi warna putih
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 255),
                            child: const Text(
                              "Kelas",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            style: const TextStyle(
                              fontFamily: 'Poppins Light',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Teori Pemrograman Mobile E",
                              hintText: "Ubah Kelas",
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 18,
                              ),
                              hintStyle: const TextStyle(
                                fontFamily: 'Poppins Light',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              labelStyle: const TextStyle(
                                color: Colors
                                    .white, // Ubah label text menjadi warna putih
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    // UpcomingWidget(),
                    // SizedBox(
                    //   height: 15,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
