import 'dart:ui';
import 'package:proje/cart_screen.dart';
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
        title: Padding(
          padding: const EdgeInsets.only(left: 75.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const Text(
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
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Find everything",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      "right to your door",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 30,
                      ),
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
                        child: const Icon(Icons.search),
                        padding: const EdgeInsets.all(5.0),
                        shape: const CircleBorder(),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Text(
                          "  Search  ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 20,
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
                        child: const Icon(Icons.room),
                        padding: const EdgeInsets.all(5.0),
                        shape: const CircleBorder(),
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
                          child: const Text(
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
                  child: const Center(
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
                    const Text(
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
                      child: const Text(
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
                            left: 15.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.brown[50],
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 250,
                          width: 180,
                          //color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                    child: Row(
                                      children: const [
                                        Icon(Icons.favorite_border)
                                      ],
                                    ),
                                    onPressed: () {
                                      // ignore: unused_local_variable
                                      FirebaseFirestore firestore =
                                          FirebaseFirestore.instance;
                                      CollectionReference favouriteRef =
                                          FirebaseFirestore.instance
                                              .collection('favourite');
                                      favouriteRef.add({
                                        'name': 'Orange',
                                        'price': '3.99',
                                        'image':
                                            'https://firebasestorage.googleapis.com/v0/b/mobil-projem.appspot.com/o/image%2Forange.jpg?alt=media&token=df00e6d4-a51a-4768-828a-bece075e3806'
                                      });
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 3.0),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://sc04.alicdn.com/kf/Ub90f0466628744e2b429bbfc4a10753e6.jpg'),
                                    width: 110,
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
                                const Text(
                                  "Weight 1 kilogram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
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
                                    // ignore: deprecated_member_use
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
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "3.99€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        // ignore: unused_local_variable
                                        FirebaseFirestore firestore =
                                            FirebaseFirestore.instance;
                                        CollectionReference favouriteRef =
                                            FirebaseFirestore.instance
                                                .collection('sepet');
                                        favouriteRef.add({
                                          'name': 'Orange',
                                          'price': '3.99',
                                          'image':
                                              'https://firebasestorage.googleapis.com/v0/b/mobil-projem.appspot.com/o/image%2Forange.jpg?alt=media&token=df00e6d4-a51a-4768-828a-bece075e3806'
                                        }).then(
                                          (value) => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Cart()),
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, top: 30.0, bottom: 20.0, right: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[50],
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 250,
                      width: 180,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                child: Row(
                                  children: const [Icon(Icons.favorite_border)],
                                ),
                                onPressed: () {
                                  // ignore: unused_local_variable
                                  FirebaseFirestore firestore =
                                      FirebaseFirestore.instance;
                                  CollectionReference favouriteRef =
                                      FirebaseFirestore.instance
                                          .collection('favourite');
                                  favouriteRef.add({
                                    'name': 'Nutella',
                                    'price': '5.99',
                                    'image':
                                        'https://firebasestorage.googleapis.com/v0/b/mobil-projem.appspot.com/o/image%2Fnutella.jpg?alt=media&token=3a728cf6-ad25-451a-bc1a-6d77990fee30'
                                  });
                                },
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 0, bottom: 3.0),
                              child: Image(
                                image: NetworkImage(
                                    'https://cdn.cimri.io/market/260x260/nutella-500-gr-kakaolu-findik-kremasi-_312770.jpg'),
                                width: 95,
                              ),
                            ),
                            const Text(
                              "Nutella",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              "Weight 500 gram",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
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
                                // ignore: deprecated_member_use
                                child: FlatButton(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3.0, bottom: 3.0, right: 5.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.green,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: const Text(
                                            "+",
                                            style: TextStyle(
                                              fontSize: 35.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8.0),
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
                            left: 15.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.brown[50],
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 250,
                          width: 180,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                    child: Row(
                                      children: const [
                                        Icon(Icons.favorite_border)
                                      ],
                                    ),
                                    onPressed: () {
                                      // ignore: unused_local_variable
                                      FirebaseFirestore firestore =
                                          FirebaseFirestore.instance;
                                      CollectionReference favouriteRef =
                                          FirebaseFirestore.instance
                                              .collection('favourite');
                                      favouriteRef.add({
                                        'name': 'Chocolate',
                                        'price': '5.99',
                                        'image':
                                            'https://firebasestorage.googleapis.com/v0/b/mobil-projem.appspot.com/o/image%2Fchocolate.jpg?alt=media&token=01a5abc0-3999-49c6-b931-7ec38953b2f3',
                                      });
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 3.0),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://www.greenqueen.com.hk/wp-content/uploads/2021/07/Lab-Grown-Chocolate-Could-Be-The-Future-of-Sustainable-Confectionery.jpg'),
                                    width: 115,
                                  ),
                                ),
                                const Text(
                                  "chocolate",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  "Weight 100 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
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
                                    // ignore: deprecated_member_use
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
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
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
                            left: 15.0, top: 30.0, bottom: 20.0, right: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.brown[50],
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 250,
                          width: 180,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 6.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                    child: Row(
                                      children: const [
                                        Icon(Icons.favorite_border)
                                      ],
                                    ),
                                    onPressed: () {
                                      // ignore: unused_local_variable
                                      FirebaseFirestore firestore =
                                          FirebaseFirestore.instance;
                                      CollectionReference favouriteRef =
                                          FirebaseFirestore.instance
                                              .collection('favourite');
                                      favouriteRef.add({
                                        'name': 'Pineapple',
                                        'price': '5.99',
                                        'image':
                                            'https://firebasestorage.googleapis.com/v0/b/mobil-projem.appspot.com/o/image%2Fpineapple.jpg?alt=media&token=2c2b2c33-41b5-4972-a694-235a9dea08e9',
                                      });
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 3.0),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://wwwi.globalpiyasa.com/lib/Urun/670/af0e3fb03a2ea9ee169352bc35efb933_1.jpg'),
                                    width: 105,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 0),
                                  child: Text(
                                    "pineapple",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Weight 900 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
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
                                    // ignore: deprecated_member_use
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
                                              child: const Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 35.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
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
