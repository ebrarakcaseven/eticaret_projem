import 'package:flutter/material.dart';
import 'package:proje/favourite_screen.dart';
import 'package:proje/home_screen.dart';
import 'package:proje/cart_screen.dart';
import 'package:proje/categories_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Categories(),
    Favourite(),
    Cart(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.brown[100],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_mall,
              color: Colors.black,
            ),
            title: Text(
              'Categories',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            title: Text(
              'Favourite',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            title: Text(
              'Cart',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
