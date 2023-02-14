import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning"),
                        Text("Book Tickets"),
                      ],
                    ),
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('biman1.jpg')
                        )
                      ),
                    )

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
