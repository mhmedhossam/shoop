import 'package:flutter/material.dart';
import 'package:go/home.dart';
import 'package:go/wishlist.dart';
import 'package:go/profile.dart';
import 'package:go/orderh.dart';
import 'package:go/liststep.dart';
import 'package:go/woman.dart';
import 'package:go/login.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              SizedBox(height: 39),
              Stack(
                children: [
                  Container(
                    height: 105,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Text("Home",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                    margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35),
                          topLeft: Radius.circular(35),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 100),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60)),
                        labelText: "type a product name",
                        hintText: "product name",
                        suffixIcon: Icon(
                          Icons.account_tree_outlined,
                          color: Colors.blueGrey,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 340,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: const Icon(
                        Icons.shopping_bag_rounded,
                        size: 30,
                      ),
                    ),
                  ),
                  Builder(builder: (context) {
                    return Container(
                      height: 140,
                      width: 55,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.checklist,
                            size: 30,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                      ),
                    );
                  }),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(
                    width: 195,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepPurple),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("wishlist");
                      },
                      child: Text('see all'))
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                        height: 95,
                        width: 95,
                        //  color: Colors.green,
                        child: Image.asset("images/a1.jpg")),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                        height: 95,
                        width: 95,
                        //   color: Colors.green,
                        child: Image.asset("images/a2.jpg")),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                        height: 95,
                        width: 95,
                        //   color: Colors.green,
                        child: Image.asset("images/a3.jpg")),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(1),
                child: Container(
                    height: 155,
                    width: 320,
                    // color: Colors.green,
                    child: Image.asset("images/a4.jpg")),
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
                    width: 50,
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
                ],
              )
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
