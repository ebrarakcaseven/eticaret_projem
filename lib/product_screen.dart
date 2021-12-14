import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proje/home_screen.dart';
import 'package:proje/nav.dart';

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
          //  padding: new EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
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

                      //backgroundColor: Colors.green,
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
                children: [
                  // Image.asset('asset/image/orange.jpg'),
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
                                  /*child: Image(
                                    image: NetworkImage(
                                        'https://sc04.alicdn.com/kf/U3f818dc61b164bd3996575580efd2b4b6.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                Text(
                                  "Orange",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 1 kilogram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
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
                                      // color: Colors.green,
                                      // textColor: Colors.green,
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
                            left: 28.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          // color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                  /*  child: Image(
                                    image: NetworkImage(
                                        'https://cdn.cimri.io/market/260x260/nutella-500-gr-kakaolu-findik-kremasi-_312770.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                Text(
                                  "Nutella",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 500 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
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
                                              "5.00€",
                                              style: TextStyle(
                                                  fontSize: 30.0,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
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
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://www.themarmarahotels.com/Resources/ChocolateShop/ImageFile2/chocolate_m.jpg'),
                                    width: 80,
                                  ),*/
                                ),
                                Text(
                                  "chocolate",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 100 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
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
                                            "5.00€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
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
                            left: 28.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          //  color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://wwwi.globalpiyasa.com/lib/Urun/670/af0e3fb03a2ea9ee169352bc35efb933_1.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                Text(
                                  "pineapple",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 900 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 37.0, left: 8.0, right: 8.0),
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
                                            "5.00€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
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
                children: [
                  // Image.asset('asset/image/orange.jpg'),
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
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://sc04.alicdn.com/kf/U3f818dc61b164bd3996575580efd2b4b6.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                Text(
                                  "Orange",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 1 kilogram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
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
                                      // color: Colors.green,
                                      // textColor: Colors.green,
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
                            left: 28.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          // color: Colors.black,
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
                                Text(
                                  "Nutella",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 500 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
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
                                              "5.00€",
                                              style: TextStyle(
                                                  fontSize: 30.0,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
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
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://www.themarmarahotels.com/Resources/ChocolateShop/ImageFile2/chocolate_m.jpg'),
                                    width: 80,
                                  ),*/
                                ),
                                Text(
                                  "chocolate",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 100 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
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
                                            "5.00€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
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
                            left: 28.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 230,
                          width: 180,
                          //  color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 5.0),
                                  /*  child: Image(
                                    image: NetworkImage(
                                        'https://wwwi.globalpiyasa.com/lib/Urun/670/af0e3fb03a2ea9ee169352bc35efb933_1.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                Text(
                                  "pineapple",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Weight 900 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 37.0, left: 8.0, right: 8.0),
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
                                            "5.00€",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      // color: Colors.green,
                                      // textColor: Colors.green,
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
