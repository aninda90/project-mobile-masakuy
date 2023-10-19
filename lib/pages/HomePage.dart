import 'package:masakuy/wigets/CategoryButtons.dart';
import 'package:masakuy/wigets/ForYouWidget.dart';
import 'package:masakuy/wigets/RekomendasiWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Halo Aninda",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "profilePage");
                      },
                      child: CircleAvatar(
                        backgroundImage : AssetImage('assets/images/profile.jpg'), radius: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Mau masak apa hari ini?",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xFFD65A00),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white54,
                  size: 30,
                ),
                Container(
                  width: 280,
                  margin: EdgeInsets.only(left: 5),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white54),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CategoryButtons(),
          SizedBox(
            height: 30,
          ),
          UntukAndaWidget(),
          SizedBox(
            height: 40,
          ),
          RekomendasiWidget(),
          Padding(padding: EdgeInsets.only(bottom: 20))
        ],
      )),
    )
        // ,
        // bottomNavigationBar: CustomNavBar(),
        );
  }
}
