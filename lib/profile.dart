import 'package:flutter/material.dart';
import 'package:go/profileone.dart';

class profil extends StatefulWidget {
  profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [
          Container(
            height: 140,
            width: 55,
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Container(
            height: 140,
            width: 350,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Edit profile",
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
              child: Text(
                "cancel",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrangeAccent,
                    fontWeight: FontWeight.bold),
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
            height: 460,
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
            padding: EdgeInsets.only(top: 250),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "enter name",
                hintText: "enter name",
                prefixIcon: Icon(
                  Icons.account_circle,
                  color: Colors.deepPurple,
                  size: 50,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 320),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "enter address",
                hintText: "enter address",
                prefixIcon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                  size: 50,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 390),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "enter country",
                hintText: "enter country",
                prefixIcon: Icon(
                  Icons.assistant_navigation,
                  color: Colors.deepPurple,
                  size: 50,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 460),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "enter Email",
                hintText: "enter Email",
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.deepPurple,
                  size: 50,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 530),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "enter phone",
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.deepPurple,
                  size: 50,
                ),
                hintText: "enter phone",
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 600, left: 85),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  padding: EdgeInsets.symmetric(horizontal: 100)),
              child: Text(
                "save",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("profileone");
              },
            ),
          )
        ],
      ),
    );
  }
}
