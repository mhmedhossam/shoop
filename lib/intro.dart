import 'package:flutter/material.dart';
import 'package:go/frist.dart';
import 'package:go/intrott.dart';

class introtwo extends StatefulWidget {
  introtwo({Key? key}) : super(key: key);

  @override
  State<introtwo> createState() => _introtwoState();
}

class _introtwoState extends State<introtwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff432267),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, left: 50),
            child: Image.asset("images/c.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80, left: 20),
            child: Container(
              width: 210,
              child: Text(
                "we promote the fact that we offer  free shiping for all order",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "back ",
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
                    Navigator.of(context).pushNamed("introthree");
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
