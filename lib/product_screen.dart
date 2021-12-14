import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proje/home_screen.dart';
import 'package:proje/nav.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proje/cart_screen.dart';

class Product extends StatelessWidget {
  bool _hasBeenPressed = false;
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
              MaterialPageRoute(builder: (context) => Nav()),
            ),
            elevation: 2.0,
            fillColor: Colors.green,
            child: Icon(Icons.keyboard_arrow_left),
            padding: EdgeInsets.all(10.0),
            shape: CircleBorder(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 6.0),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Product",
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
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: TextField(
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
                          height: 250,
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
                                  padding: const EdgeInsets.only(top: 0),
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
                                Text(
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
                      height: 250,
                      width: 180,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
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
                            Text(
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
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
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
                            left: 10.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
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
                          height: 250,
                          width: 180,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 6.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
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
                                        'price': '5.99',
                                        'image':
                                            'https://firebasestorage.googleapis.com/v0/b/mobil-projem.appspot.com/o/image%2Fpineapple.jpg?alt=media&token=2c2b2c33-41b5-4972-a694-235a9dea08e9',
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, bottom: 3.0),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://wwwi.globalpiyasa.com/lib/Urun/670/af0e3fb03a2ea9ee169352bc35efb933_1.jpg'),
                                    width: 105,
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
