import 'package:flutter/material.dart';
import 'package:proje/nav.dart';

// ignore: must_be_immutable
class Dairy extends StatelessWidget {
  // ignore: prefer_final_fields, unused_field
  bool _hasBeenPressed = false;

  Dairy({Key? key}) : super(key: key);
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
            padding: const EdgeInsets.all(10.0),
            shape: const CircleBorder(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          //  padding: new EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
          margin: const EdgeInsets.symmetric(vertical: 6.0),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Dairy",
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
                padding:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 20.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://www2.biomin.net/fileadmin/user_upload/Articles/2019/Boosting_milk_yield/Milk-production-in-heifers-fed-Digestarom-Dairy-increased-by-0.7-kg-per-day.jpg'),
                                    width: 140,
                                  ),*/
                                ),
                                const Text(
                                  "Milk",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
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
                            left: 10.0, top: 30.0, bottom: 20.0, right: 10.0),
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
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 18.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'data:image/jpeg;base64,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'),
                                    width: 150,
                                  ),*/
                                ),
                                const Text(
                                  "Yoghurt",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
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
                                          const Padding(
                                            padding: EdgeInsets.only(left: 8.0),
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
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 20.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15.0),
                                  child: Text(
                                    "Eggs",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      //backgroundColor: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Weight 100 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
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
                            left: 10.0, top: 30.0, bottom: 20.0, right: 10.0),
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
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 20.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://cdn.shopify.com/s/files/1/0150/0232/products/Pearl_Valley_Swiss_Slices_36762caf-0757-45d2-91f0-424bcacc9892_800x.jpg?v=1534871055'),
                                    width: 110,
                                  ),*/
                                ),
                                const Text(
                                  "cheese",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  "Weight 900 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 8.0, right: 8.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 15.0),
                                  /* child: Image(
                                    image: NetworkImage(
                                        'https://iasbh.tmgrup.com.tr/4ec83a/650/344/0/21/724/401?u=https://isbh.tmgrup.com.tr/sbh/2021/09/21/ruyada-elma-toplamak-ne-anlama-gelir-ruyada-agactan-kirmizi-ve-yesil-elma-toplamak-ne-demek-1632220900266.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    "Apple",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      //backgroundColor: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Weight 1 kilogram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 8.0, right: 8.0),
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
                            left: 10.0, top: 30.0, bottom: 20.0, right: 10.0),
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
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.0, right: 2.0, top: 15.0),
                                  /*  child: Image(
                                    image: NetworkImage(
                                        'https://medinabaking.com/wp-content/uploads/2020/01/Flour.jpg'),
                                    width: 100,
                                  ),*/
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    "flour",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      //backgroundColor: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Weight 500 gram",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //backgroundColor: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 8.0, right: 8.0),
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
                                          const Padding(
                                            padding: EdgeInsets.only(left: 8.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
