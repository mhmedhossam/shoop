import 'package:flutter/material.dart';

class woman extends StatefulWidget {
  woman({Key? key}) : super(key: key);

  @override
  State<woman> createState() => _womanState();
}

class _womanState extends State<woman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  "images/12.jpg",
                  height: 300,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 400,
                  width: 355,

                  //child: Image.asset('images/3.jpg'),
                ),
              ),
              Container(
                  height: 140,
                  width: 55,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  )),
              Container(
                  height: 140,
                  width: 350,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 250, left: 310),
                child: Container(
                  child: Text(
                    "sale 15 %",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  height: 20,
                  width: 75,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(45)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 250),
                child: Container(
                  height: 300,
                  width: 410,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Woman's fall winter scarf",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 45, top: 295),
                  child: Text(
                    "American Trends",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 320, left: 50),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("+23"),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 350, left: 20),
                    child: Text(
                        "wearing this scarf in cold fall winter or spring dayswearing this scarf in cold fall winter or spring dayswearing this scarf in cold fall winter or spring dayswearing this scarf in cold fall winter or spring dayswearing this scarf in cold fall winter or spring dayswearing this scarf in cold fall winter or spring days"),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 450, left: 20),
                child: Text(
                  "Material & size",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 480, left: 20),
                child: Text(
                    "this scarf  scarf in cold fall winter or spring dayswearing this scarf in cold fall winter or spring days"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 520, left: 120),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag),
                  label: Text("15.99 | add to cart"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              )
            ]),
          ],
        ));
  }
}
