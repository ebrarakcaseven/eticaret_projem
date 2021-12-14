import 'dart:ui';
import 'package:proje/cart_screen.dart';
import 'package:proje/favourite_screen.dart';
import 'package:proje/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:proje/search_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 0, left: 5.0),
          child: RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: Colors.green,
            child: const Icon(Icons.list),
            padding: const EdgeInsets.all(5.0),
            shape: const CircleBorder(),
          ),
        ),
        title: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(
              "  id8 Shop  ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                // backgroundColor: Colors.green,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Find everything",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "right to your door",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "                      ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      //backgroundColor: Colors.green,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      RawMaterialButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Search()),
                        ),
                        elevation: 2.0,
                        fillColor: Colors.green,
                        child: Icon(Icons.search),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Text(
                            "  Search  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.green,
                        child: Icon(Icons.room),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, right: 30.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Text(
                            "  Dhaka  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  height: 120,
                  width: 250,
                  //color: Colors.black,
                  child: Center(
                    child: Text(
                      "Buy 100€ and get 10€ off",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        // backgroundColor: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular product",
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Product()),
                      ),
                      child: Text(
                        "see all",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          //color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 110.0, right: 5.0),
                                  child: FlatButton(
                                    child: Row(
                                      children: [Icon(Icons.favorite_border)],
                                    ),
                                    onPressed: () {
                                      FirebaseFirestore firestore =
                                          FirebaseFirestore.instance;
                                      CollectionReference favouriteRef =
                                          FirebaseFirestore.instance
                                              .collection('favourite');
                                      favouriteRef.add(
                                          {'name': 'Orange', 'price': '3.99'});
                                    },
                                  ),
                                ),
                                const Text(
                                  "Orange",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 1 kilogram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "3.990€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        FirebaseFirestore firestore =
                                            FirebaseFirestore.instance;
                                        CollectionReference favouriteRef =
                                            FirebaseFirestore.instance
                                                .collection('sepet');
                                        favouriteRef.add({
                                          'name': 'Orange',
                                          'price': '3.99'
                                        }).then(
                                          (value) => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Cart()),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, top: 30.0, bottom: 20.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://cdn.cimri.io/market/260x260/nutella-500-gr-kakaolu-findik-kremasi-_312770.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 110.0, right: 5.0),
                                  child: FlatButton(
                                    child: Row(
                                      children: [Icon(Icons.favorite_border)],
                                    ),
                                    onPressed: () {
                                      FirebaseFirestore firestore =
                                          FirebaseFirestore.instance;
                                      CollectionReference favouriteRef =
                                          FirebaseFirestore.instance
                                              .collection('favourite');
                                      favouriteRef.add(
                                          {'name': 'Nutella', 'price': '5.99'});
                                    },
                                  ),
                                ),
                                Text(
                                  "Nutella",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 500 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "5.99€",
                                              style: TextStyle(
                                                  fontSize: 30.0,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://www.themarmarahotels.com/Resources/ChocolateShop/ImageFile2/chocolate_m.jpg'),
                                    width: 80,
                                  ),*/
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 110.0, right: 5.0),
                                  child: FlatButton(
                                    child: Row(
                                      children: [Icon(Icons.favorite_border)],
                                    ),
                                    onPressed: () {
                                      FirebaseFirestore firestore =
                                          FirebaseFirestore.instance;
                                      CollectionReference favouriteRef =
                                          FirebaseFirestore.instance
                                              .collection('favourite');
                                      favouriteRef.add({
                                        'name': 'Chocolate',
                                        'price': '5.99'
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  "chocolate",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 100 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "5.99€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, top: 30.0, bottom: 20.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 6.0),
                                  /*child: Image(
                                    image: NetworkImage(
                                        'https://wwwi.globalpiyasa.com/lib/Urun/670/af0e3fb03a2ea9ee169352bc35efb933_1.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 110.0, right: 5.0),
                                  child: FlatButton(
                                    child: Row(
                                      children: [Icon(Icons.favorite_border)],
                                    ),
                                    onPressed: () {
                                      FirebaseFirestore firestore =
                                          FirebaseFirestore.instance;
                                      CollectionReference favouriteRef =
                                          FirebaseFirestore.instance
                                              .collection('favourite');
                                      favouriteRef.add({
                                        'name': 'Pineapple',
                                        'price': '5.99'
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Text(
                                    "pineapple",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Weight 900 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 8.0, right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: FlatButton(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3.0,
                                                bottom: 3.0,
                                                right: 5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "5.99€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
