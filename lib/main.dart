import 'package:flutter/material.dart';
import 'package:go/frist.dart';
import 'package:go/home.dart';
import 'package:go/intro.dart';
import 'package:go/intrott.dart';
import 'package:go/liststep.dart';
import 'package:go/login.dart';
import 'package:go/orderh.dart';
import 'package:go/profile.dart';
import 'package:go/profileone.dart';
import 'package:go/wishlist.dart';
import 'package:go/woman.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
      routes: {
        "intro": (context) => intro(),
        "introtwo": (context) => introtwo(),
        "introthree": (context) => introthree(),
        "homepage": (context) => homepage(),
        "wishlist": (context) => wishlist(),
        "profil": (context) => profil(),
        "profileone": (context) => profileone(),
        "order": (context) => order(),
        "home": (context) => Home(),
        "woman": (context) => woman(),
        "login": (context) => login()
      },
    );
  }
}
