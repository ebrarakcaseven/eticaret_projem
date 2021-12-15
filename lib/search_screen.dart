import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:proje/home_screen.dart';
import 'package:proje/categories_screen.dart';
import 'package:proje/cart_screen.dart';
import 'package:proje/favourite_screen.dart';
import 'package:proje/nav.dart';

// ignore: must_be_immutable
class Search extends StatelessWidget {
  // ignore: prefer_final_fields, unused_field
  int _selectedIndex = 0;
  // ignore: prefer_final_fields, unused_field
  List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Categories(),
    const Favourite(),
    const Cart(),
  ];
  // ignore: prefer_final_fields, unused_field
  bool _hasBeenPressed = false;

  Search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 2.0, left: 6.0),
          child: RawMaterialButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Nav()),
            ),
            elevation: 2.0,
            fillColor: Colors.green,
            child: const Icon(Icons.keyboard_arrow_left),
            padding: const EdgeInsets.all(5.0),
            shape: const CircleBorder(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 6.0),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Center(
                    child: Text(
                      "Search",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search your product",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
