import 'package:flutter/material.dart';
import 'package:go/home.dart';

class introthree extends StatefulWidget {
  introthree({Key? key}) : super(key: key);

  @override
  State<introthree> createState() => _introthreeState();
}

class _introthreeState extends State<introthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff432267),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 120,
            ),
            child: Image.asset("images/d.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 40),
            child: Container(
              width: 230,
              child: Text(
                "Be sure to log in to be able to book newly added offers ?",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("homepage");
                      },
                      child: Text(
                        "log in ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Text(
                      "| ",
                      style: TextStyle(color: Color(0xffE99000), fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Regester ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              /*
              Padding(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "log in ",
                    style: TextStyle(color: Color(0xffE99000), fontSize: 20),
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
                padding: EdgeInsets.only(top: 30, left: 120),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Regester ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),*/
            ],
          )
        ],
      ),
    );
  }
}
