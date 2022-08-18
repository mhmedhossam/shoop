import 'package:flutter/material.dart';
import 'package:go/profile.dart';
import 'package:go/wishlist.dart';

class profileone extends StatefulWidget {
  profileone({Key? key}) : super(key: key);

  @override
  State<profileone> createState() => _profileoneState();
}

class _profileoneState extends State<profileone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          color: Colors.deepPurple,
        ),
        Container(
          height: 140,
          width: 55,
          child: Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Container(
          height: 140,
          width: 350,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              " profile",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 140,
          width: 350,
          child: Align(
            alignment: Alignment.centerRight,
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
        Container(
          height: 240,
          width: 150,
          child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 150,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Container(
          height: 460,
          width: 260,
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.square,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
        Container(
          height: 400,
          width: 258,
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.square,
              color: Colors.deepPurple,
              size: 45,
            ),
          ),
        ),
        Container(
          height: 460,
          width: 260,
          child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 250, left: 110),
          child: Text(
            " Ahmed Hossam",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 280, left: 89),
          child: Text(
            " Ahmed.Hossam@gmail.com",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Edit profile")
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        primary: Colors.deepPurple),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Card")
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        primary: Colors.deepPurple),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("wishlist");
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Wishlist")
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        primary: Colors.deepPurple),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.list_alt,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Order History")
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        primary: Colors.deepPurple),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Cards")
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        primary: Colors.deepPurple),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
