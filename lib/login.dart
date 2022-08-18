import 'package:flutter/material.dart';
import 'package:go/frist.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff432267),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100, right: 50),
              child: Image.asset("images/a.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, right: 20, left: 20),
              child: TextField(
                style: TextStyle(
                  color: Color(0xffE99000),
                  fontSize: 17,
                ),
                decoration: InputDecoration(
                    labelText: "E-mail",
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                    hintText: "Enter email",
                    // suffixIcon: Icon(Icons.password_outlined),
                    hintStyle: TextStyle(color: Color(0xffE99000))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: TextField(
                style: TextStyle(color: Color(0xffE99000)),
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "password",
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                    hintText: "Enter password",
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.visibility_off),
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(color: Color(0xffE99000))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, left: 240),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "forget password ?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("intro");
                    },
                    child: Text(
                      "log in ",
                      style: TextStyle(color: Color(0xffE99000), fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 80),
                  child: Text(
                    "| ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 100),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "register ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
