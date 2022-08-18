import 'package:flutter/material.dart';
import 'package:go/liststep.dart';
import 'package:go/woman.dart';
import 'package:go/login.dart';

class order extends StatefulWidget {
  order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
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
                    onTap: () {},
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
      body: Column(
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
                      "Order History",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
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
                  height: 120,
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
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed("woman");
                                  },
                                  child: Text(
                                    "BUY",
                                    style: TextStyle(color: Colors.black),
                                  )),
                              Text(
                                "Womane's Fall Winter scarf",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
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
    );
  }
}
