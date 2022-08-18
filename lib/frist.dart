import 'package:flutter/material.dart';
import 'package:go/intro.dart';
import 'package:go/intrott.dart';

class intro extends StatefulWidget {
  intro({Key? key}) : super(key: key);

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff432267),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, left: 80),
            child: Container(child: Image.asset("images/b.png")),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80, left: 80),
            child: Container(
              height: 30,
              width: 230,
              child: Text(
                "we promote the fact that we offer   ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text(
              "free shiping for all order",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("introthree");
                  },
                  child: Text(
                    "skip ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 100),
                child: Text(
                  "| ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 130),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("introtwo");
                  },
                  child: Text(
                    "next ",
                    style: TextStyle(color: Color(0xffE99000), fontSize: 20),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
