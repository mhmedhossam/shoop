import 'package:flutter/material.dart';
import 'package:go/profile.dart';
import 'package:go/orderh.dart';
import 'package:go/liststep.dart';
import 'package:go/woman.dart';
import 'package:go/login.dart';

class wishlist extends StatefulWidget {
  wishlist({Key? key}) : super(key: key);

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xff432267),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xff432267)),
              accountName: Text(
                "Ahmed Hossam",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              accountEmail: Text(
                "ahmed.hossam@gmail.com",
                style: TextStyle(
                    color: Color(0xffE99000), fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                  size: 50,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Color(0xffE99000),
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("homepage");
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Wishlist",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.favorite,
                      color: Color(0xffE99000),
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("wishlist");
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Card",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.shopping_bag,
                      color: Color(0xffE99000),
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("home");
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Order History",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.list,
                      color: Color(0xffE99000),
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("order");
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Profile",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.person,
                      color: Color(0xffE99000),
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("profil");
                    },
                  ),
                  ListTile(
                    title: Text(
                      "App Sitting",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.edit,
                      color: Color(0xffE99000),
                      size: 30,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      "help & FAQs",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.whatshot,
                      color: Color(0xffE99000),
                      size: 30,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  ListTile(
                    title: Text(
                      "Log Out",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.logout,
                      color: Color(0xffE99000),
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: PageView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 120,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(35),
                            topLeft: Radius.circular(35),
                            bottomRight: Radius.circular(10)),
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Builder(builder: (context) {
                      return Container(
                        width: 55,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Icon(
                              Icons.list,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        ),
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 320, top: 40),
                    child: Container(
                      width: 55,
                      child: IconButton(
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140, top: 50),
                    child: Container(
                        width: 200,
                        child: Text(
                          "Wishlist",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "May your Wishes come true",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("images/m1.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("images/m2.png"),
                  )
                ],
              ),
              Container(
                height: 510,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              //image
                              Image.asset("images/m.jpg"),

                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Womane's Fall Winter scarf",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("american trend"),
                                  Row(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 6),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              //image
                              Image.asset("images/m.jpg"),

                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Womane's Fall Winter scarf",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("american trend"),
                                  Row(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 6),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              //image
                              Image.asset("images/m.jpg"),

                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Womane's Fall Winter scarf",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("american trend"),
                                  Row(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 6),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              //image
                              Image.asset("images/m.jpg"),

                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Womane's Fall Winter scarf",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("american trend"),
                                  Row(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 6),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              //image
                              Image.asset("images/m.jpg"),

                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Womane's Fall Winter scarf",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("american trend"),
                                  Row(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 6),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              //image
                              Image.asset("images/m.jpg"),

                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Womane's Fall Winter scarf",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("american trend"),
                                  Row(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 6),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              //image
                              Image.asset("images/m.jpg"),

                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Womane's Fall Winter scarf",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("american trend"),
                                  Row(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 6),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              //image
                              Image.asset("images/m.jpg"),

                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Womane's Fall Winter scarf",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("american trend"),
                                  Row(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(children: [
            SizedBox(height: 39),
            Stack(
              children: [
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, right: 1, left: 60),
            ),
            Text(
              "Popular",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Container(
                      height: 220,
                      width: 150,
                      //  color: Colors.green,
                      child: Image.asset("images/a5.jpg")),
                ),
                SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Container(
                      height: 200,
                      width: 150,
                      //  color: Colors.green,
                      child: Image.asset(
                        "images/a6.jpg",
                      )),
                ),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Container(
                      height: 220,
                      width: 150,
                      //  color: Colors.green,
                      child: Image.asset("images/a5.jpg")),
                ),
                SizedBox(
                  width: 50,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Container(
                      height: 220,
                      width: 150,
                      //  color: Colors.green,
                      child: Image.asset("images/a5.jpg")),
                ),
              ],
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Container(
                      height: 220,
                      width: 150,
                      //  color: Colors.green,
                      child: Image.asset("images/a5.jpg")),
                ),
                SizedBox(
                  width: 50,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Container(
                      height: 220,
                      width: 150,
                      //  color: Colors.green,
                      child: Image.asset("images/a5.jpg")),
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }
}
