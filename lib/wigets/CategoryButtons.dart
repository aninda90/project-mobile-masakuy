import 'package:flutter/material.dart';

class CategoryButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "categoryListPage");
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Icon(
                Icons.ramen_dining,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "categoryListPage");
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Icon(
                Icons.coffee,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "categoryListPage");
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Icon(
                Icons.bakery_dining,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
