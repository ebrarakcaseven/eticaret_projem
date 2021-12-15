import 'package:flutter/material.dart';
import 'package:proje/favourite_screen.dart';
import 'package:proje/home_screen.dart';
import 'package:proje/cart_screen.dart';
import 'package:proje/categories_screen.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Categories(),
    const Favourite(),
    const Cart(),
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
            // ignore: deprecated_member_use
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
            // ignore: deprecated_member_use
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
            // ignore: deprecated_member_use
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
            // ignore: deprecated_member_use
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
